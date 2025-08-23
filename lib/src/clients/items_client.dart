import 'dart:io';
import 'dart:isolate';

import 'package:warframestat_client/warframestat_client.dart';

/// {@template warframeitemsclient}
/// Client for all warframe-items endpoints.
/// {@endtemplate}
class WarframeItemsClient extends WarframestatHttpClient {
  /// {@macro warframeitemsclient}
  WarframeItemsClient({super.language, super.ua, super.client});

  /// Returns a list of all warframe items.
  Future<List<Item>> fetchAllItems<T extends Item>({
    List<ItemProps>? props,
    List<T> Function(List<dynamic>)? convert,
  }) async {
    final keepKeys = props?.map((e) => e.name).join(',');
    final response = await _get<List<dynamic>>('/', query: {if (props != null) 'only': keepKeys});

    if (props != null && convert == null) throw Exception('Using custom props require a custom Item to serialize to.');

    return Isolate.run(() => (convert ?? toItems)(response.data));
  }

  /// Returns all [Item]s that match the search query.
  ///
  /// You can narrow down [T] if you want to also filter out your specfic Item type. If you'd like bare minimum you can
  /// set [T] to [ItemCommon], be aware that the API will still pull the full item but the code will only return
  /// [ItemCommon] props
  ///
  /// Use [props] and [convert] if you want to use your own [Item] class and reduce the amount of keys/per item the API
  /// returns.
  ///
  /// * [props]:  The [Item] properties you want the API to return.
  /// * [convert]: The fromJson function to use.
  Future<List<T>> search<T extends Item>(
    String query, {
    List<ItemProps>? props,
    List<T> Function(List<Map<String, dynamic>>)? convert,
  }) async {
    final only = props?.map((p) => p.name).join(',');
    final response = await _get<List<dynamic>>('/search/$query', query: {if (only != null) 'only': only});

    if (convert != null) {
      final results = List<Map<String, dynamic>>.from(response.data);
      return Isolate.run(() => convert(results));
    }

    return (await Isolate.run(() => toItems(response.data))).whereType<T>().toList();
  }

  /// Returns a list of all mods and mod set mods.
  Future<List<BaseMod>> fetchAllMods() async {
    final response = await _get<List<dynamic>>('/mods');
    final items = await Isolate.run(() => toItems(response.data));

    return items.whereType<BaseMod>().toList();
  }

  /// Get data for the closest matching [Mod].
  Future<Mod> fetchMod(String query) async {
    final response = await _get<Map<String, dynamic>>('/mods/$query');

    return Mod.fromJson(response.data);
  }

  /// Returns a list of all [Warframe]s.
  ///
  /// [includeMechs]: Whether or not to inlcude Necramechs
  Future<List<PowerSuit>> fetchAllWarframes({bool includeMechs = true}) async {
    final response = await get('/warframes');

    final json = jsonDecode(response.body) as List<dynamic>;
    final items = await Isolate.run(() => toItems(json));

    if (includeMechs) return List<PowerSuit>.from(items);

    return items.whereType<Warframe>().toList();
  }

  /// Get data for the closest matching warframe.
  Future<Warframe> fetchWarframe(String query) async {
    final response = await get('/warframes/$query');
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    return Warframe.fromJson(json);
  }

  /// Search for warframes with the closes possible match to the [query].
  ///
  /// Because Warframes and necromech seem to share the same [ItemCommon.category]
  /// results can also return [Necramech]s as such this method will always
  /// return the base class of the two.
  Future<List<PowerSuit>> searchWarframes(String query) async {
    final response = await get('/warframes/search/$query');
    final json = jsonDecode(response.body) as List<Map<String, dynamic>>;
    final items = await Isolate.run(() => toItems(json));

    return items.whereType<PowerSuit>().toList();
  }

  /// Returns a list of all [Weapon] types.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<Item>> fetchAllWeapons() async {
    final response = await get('/weapons');
    final json = jsonDecode(response.body) as List<dynamic>;

    return Isolate.run(() => toItems(json));
  }

  /// Get data for the closest matching weapon.
  ///
  /// Throws:
  ///
  /// * [WeaponNotValid] if the item parsed as a different item
  ///   that is not a [Weapon] type
  Future<Weapon> fetchWeapon(String query) async {
    final response = await get('/weapons/$query');
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final item = await Isolate.run(() => toItem(json)) as ItemCommon;

    return switch (item) {
      Primary() => item,
      Secondary() => item,
      Melee() => item,
      _ => throw WeaponNotValid(item.name, item.type),
    };
  }

  /// Search for weapons with the closes possible match to the [query].
  Future<List<Weapon>> searchWeapon(String query) async {
    final response = await _get<List<dynamic>>('/weapons/search/$query');

    return toItems(response.data).whereType<Weapon>().toList();
  }

  /// Pulls an item useing it's uniqueName.
  Future<ItemCommon?> fetchItem(String uniqueName) async {
    final encodedUniqueName = Uri.encodeQueryComponent(uniqueName);
    final request = await _get<Map<String, dynamic>>('/$encodedUniqueName/', query: {'by': 'uniqueName'});

    final statusCode = request.data['code'] as int? ?? request.statusCode;
    if (statusCode != HttpStatus.ok) return null;

    return toItem(request.data) as ItemCommon;
  }

  Future<({int statusCode, T data})> _get<T>(String path, {Map<String, dynamic>? query}) async {
    final response = await get('/items$path', query: query);

    return (statusCode: response.statusCode, data: await jsonDecode<T>(response.body));
  }
}
