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

    return toBaseItems(response);
  }

  /// Get data for the closest matching single item
  Future<Item> getItem(String query) async {
    final response = await _get<Map<String, dynamic>>('/$query');

    return toBaseItem(response);
  }

  /// Returns all [Item]s that match the search query.
  Future<List<Item>> search(String query) async {
    final response = await _get<List<dynamic>>('/search/$query');

    return toBaseItems(response);
  }

  /// Returns a list of all mods.
  ///
  /// WARNING:
  /// THIS IS A LOT OF DATA AND IT IS RECOMMENDED TO RUN THIS FUNCTION IN AN
  /// ISOLATE.
  Future<List<Item>> getAllMods() async {
    final response = await _get<List<dynamic>>('/mods');

    // TODO(SlayerOrnstein): Needs more work for mod sets. So that we can return
    //  a list of Mods instead of a list of items.
    return toBaseItems(response);
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
    final frames = toBaseItems(response).whereType<PowerSuit>().toList();

    return includeMechs ? frames : frames.whereType<Warframe>().toList();
  }

  /// Get data for the closest matching warframe.
  Future<Warframe> getWarframe(String query) async {
    final response = await _get<Map<String, dynamic>>('/warframes/$query');

    return Warframe.fromJson(response);
  }

  Future<T> _get<T>(String path) async {
    final response = await get('/items$path');

    return json.decode(response.body) as T;
  }
}
