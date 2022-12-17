import 'dart:convert';

import 'package:warframestat_client/src/utils/items_utils.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template warframeitemsclient}
/// Client for all warframe-items endpoints.
/// {@endtemplate}
class WarframeItemsClient extends WarframestatClient {
  /// {@macro warframeitemsclient}
  WarframeItemsClient({super.language, super.ua, super.client});

  /// Returns a list of all warframe items.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<Item>> getAllItems() async {
    final response = await _get<List<dynamic>>('/');

    return toItems(response);
  }

  /// Get data for the closest matching single item
  Future<Item> getItem(String query) async {
    final response = await _get<Map<String, dynamic>>('/$query');

    return toItem(response);
  }

  /// Returns all [Item]s that match the search query.
  Future<List<Item>> search(String query) async {
    final response = await _get<List<dynamic>>('/search/$query');

    return toItems(response);
  }

  /// Returns a list of all mods and mod set mods.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<BaseMod>> getAllMods() async {
    final response = await _get<List<dynamic>>('/mods');

    return toItems(response).whereType<BaseMod>().toList();
  }

  /// Get data for the closest matching [Mod].
  Future<Mod> getMod(String query) async {
    final response = await _get<Map<String, dynamic>>('/mods/$query');

    return Mod.fromJson(response);
  }

  /// Returns a list of all [Warframe]s.
  ///
  /// Becasue [NecroMech]s and [Warframe]s share the same category one can use.
  /// [includeMechs] is you want to filter out necromechs or not.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<PowerSuit>> getAllWarframes({bool includeMechs = true}) async {
    final response = await _get<List<dynamic>>('/warframes');

    // The endpoint will only return warframes, this is just an enforcement.
    final frames = toItems(response).whereType<PowerSuit>().toList();

    return includeMechs ? frames : frames.whereType<Warframe>().toList();
  }

  /// Get data for the closest matching warframe.
  Future<Warframe> getWarframe(String query) async {
    final response = await _get<Map<String, dynamic>>('/warframes/$query');

    return Warframe.fromJson(response);
  }

  /// Search for warframes with the closes possible match to the [query].
  ///
  /// Because Warframes and necromech seem to share the same [Item.category]
  /// results can also return [NecroMech]s as such this method will always
  /// return the base class of the two.
  Future<List<PowerSuit>> searchFrames(String query) async {
    final response = await _get<List<dynamic>>('/warframes/search/$query');

    return toItems(response).whereType<PowerSuit>().toList();
  }

  /// Returns a list of all [Weapon] types.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<Weapon>> getAllWeapons() async {
    final response = await _get<List<dynamic>>('/weapons');

    return toItems(response).whereType<Weapon>().toList();
  }

  /// Get data for the closest matching weapon.
  Future<Weapon> getWeapon(String query) async {
    final item = await _get<Map<String, dynamic>>('/weapons/$query');
    final category = item['category'];

    if (category == 'Melee' || category == 'Arch-Melee') {
      return Melee.fromJson(item);
    }

    if (category == 'Primary' || category == 'Arch-Gun') {
      return Primary.fromJson(item);
    }

    return Secondary.fromJson(item);
  }

  /// Search for weapons with the closes possible match to the [query].
  Future<List<Weapon>> searchWeapon(String query) async {
    final response = await _get<List<dynamic>>('/weapons/search/$query');

    return toItems(response).whereType<Weapon>().toList();
  }

  Future<T> _get<T>(String path) async {
    final response = await get('/items$path');

    return json.decode(response.body) as T;
  }
}
