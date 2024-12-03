import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:warframestat_client/warframestat_client.dart';

const _minimalOpts =
    'uniqueName,name,description,imageName,category,type,vaulted,vaultDate';

/// {@template warframeitemsclient}
/// Client for all warframe-items endpoints.
/// {@endtemplate}
class WarframeItemsClient extends WarframestatClient {
  /// {@macro warframeitemsclient}
  WarframeItemsClient({super.language, super.ua, super.client});

  /// Returns a list of all warframe items.
  ///
  /// [minimal]: returns a list of [MinimalItem] instead of a full [Item]
  Future<List<Item>> fetchAllItems({bool minimal = false}) async {
    final response = await _get<List<dynamic>>(
      '/',
      query: minimal ? {'only': _minimalOpts} : null,
    );

    return Isolate.run(() => toItems(response, minimal: minimal));
  }

  /// Returns all [Item]s that match the search query.
  Future<List<MinimalItem>> search(String query) async {
    final response = await _get<List<dynamic>>(
      '/search/$query',
      query: {'only': _minimalOpts},
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
  /// [includeMechs]: Whether or not to inlcude Necramechs
  /// [minimal]: Whether or not you want the full [Item] or a [MinimalItem]
  Future<List<Item>> fetchAllWarframes({
    bool includeMechs = true,
    bool minimal = false,
  }) async {
    final response = await get(
      '/warframes',
      query: minimal ? {'only': _minimalOpts} : null,
    );

    final json = jsonDecode(response.body) as List<dynamic>;
    final items = await Isolate.run(() => toItems(json, minimal: minimal));

    if (includeMechs) return items;

    return minimal
        ? items.where((i) => i.type == ItemType.warframes).toList()
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
  Future<List<Item>> fetchAllWeapons({bool minimal = false}) async {
    final response = await get(
      '/weapons',
      query: minimal ? {'only': _minimalOpts} : null,
    );

    final json = jsonDecode(response.body) as List<dynamic>;

    return Isolate.run(() => toItems(json, minimal: minimal));
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
    final item = await Isolate.run(() => toItem(json));

    return switch (item) {
      Primary() => item,
      Secondary() => item,
      Melee() => item,
      _ => throw WeaponNotValid(item.name, item.type)
    };
  }

  /// Search for weapons with the closes possible match to the [query].
  Future<List<Weapon>> searchWeapon(String query) async {
    final response = await _get<List<dynamic>>('/weapons/search/$query');

    return toItems(response).whereType<Weapon>().toList();
  }

  /// Pulls an item useing it's uniqueName.
  ///
  /// Throws:
  ///
  /// * [ItemNotFound] if the API returns an empty response
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
