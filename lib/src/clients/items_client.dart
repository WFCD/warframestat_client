import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:warframestat_client/warframestat_client.dart';

/// {@template warframeitemsclient}
/// Client for all warframe-items endpoints.
/// {@endtemplate}
class WarframeItemsClient extends WarframestatClient {
  /// {@macro warframeitemsclient}
  WarframeItemsClient({super.language, super.ua, super.client});

  /// Returns a list of all warframe items.
  Future<List<Item>> fetchAllItems() async {
    final response = await _get<List<dynamic>>('/');

    return Isolate.run(() => toItems(response));
  }

  /// Returns all [Item]s that match the search query.
  Future<List<MinimalItem>> search(String query) async {
    const opts =
        'uniqueName,name,description,imageName,category,type,vaulted,vaultDate';

    final response = await _get<List<dynamic>>(
      '/search/$query',
      query: {'only': opts},
    );

    return Isolate.run(() => toSearchItems(response));
  }

  /// Returns a list of all mods and mod set mods.
  Future<List<BaseMod>> fetchAllMods() async {
    final response = await _get<List<dynamic>>('/mods');
    final items = await Isolate.run(() => toItems(response));

    return items.whereType<BaseMod>().toList();
  }

  /// Get data for the closest matching [Mod].
  Future<Mod> fetchMod(String query) async {
    final response = await _get<Map<String, dynamic>>('/mods/$query');

    return Mod.fromJson(response);
  }

  /// Returns a list of all [Warframe]s.
  ///
  /// Becasue [NecroMech]s and [Warframe]s share the same category one can use.
  /// [includeMechs] is you want to filter out necromechs or not.
  Future<List<PowerSuit>> fetchAllWarframes({bool includeMechs = true}) async {
    final response = await get('/warframes');
    final json = jsonDecode(response.body) as List<dynamic>;
    final items = await Isolate.run(() => toItems(json));

    return includeMechs
        ? items.whereType<PowerSuit>().toList()
        : items.whereType<Warframe>().toList();
  }

  /// Get data for the closest matching warframe.
  Future<Warframe> fetchWarframe(String query) async {
    final response = await get('/warframes/$query');
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    return Warframe.fromJson(json);
  }

  /// Search for warframes with the closes possible match to the [query].
  ///
  /// Because Warframes and necromech seem to share the same [Item.category]
  /// results can also return [NecroMech]s as such this method will always
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
  Future<List<Weapon>> fetchAllWeapons() async {
    final response = await get('/weapons');
    final json = jsonDecode(response.body) as List<dynamic>;
    final items = await Isolate.run(() => toItems(json));

    return items.whereType<Weapon>().toList();
  }

  /// Get data for the closest matching weapon.
  Future<Weapon> fetchWeapon(String query) async {
    final response = await get('/weapons/$query');
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final item = await Isolate.run(() => toItem(json));

    return switch (item) {
      Primary() => item,
      Secondary() => item,
      Melee() => item,
      _ => throw Exception('Item is not a valid weapon type')
    };
  }

  /// Search for weapons with the closes possible match to the [query].
  Future<List<Weapon>> searchWeapon(String query) async {
    final response = await _get<List<dynamic>>('/weapons/search/$query');

    return toItems(response).whereType<Weapon>().toList();
  }

  /// Pulls an item useing it's uniqueName.
  ///
  /// Returns null when an item with the uniqueName doesn't exist.
  Future<Item> fetchItem(String uniqueName) async {
    final encodedUniqueName = Uri.encodeQueryComponent(uniqueName);
    final request = await _get<Map<String, dynamic>>(
      '/$encodedUniqueName/',
      query: {'by': 'uniqueName'},
    );

    final statusCode = request['code'] as int?;
    if (statusCode == HttpStatus.notFound) {
      throw ItemNotFound(uniqueName);
    }

    return toItem(request);
  }

  Future<T> _get<T>(String path, {Map<String, dynamic>? query}) async {
    final response = await get('/items$path', query: query);

    return Isolate.run(() => json.decode(response.body) as T);
  }
}
