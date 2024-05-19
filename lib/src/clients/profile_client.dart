import 'dart:convert';
import 'dart:isolate';

import 'package:warframestat_client/warframestat_client.dart';

/// {@template profile_client}
/// Profile client to interact with the profile endpoint.
/// {@endtemplate}
class ProfileClient extends WarframestatClient {
  /// {@macro profile_client}
  ProfileClient({required this.username});

  /// Player username
  final String username;

  /// Will fetch the player's profile that will include their current loadout
  /// (both arsenal and operator) and items that contributed to player's
  /// mastery rank
  Future<Profile> fetchProfile() async {
    return _fetch<Map<String, dynamic>, Profile>('/', Profile.fromJson);
  }

  /// Will fetch just the item that have contributed to the player's
  /// mastery rank
  Future<List<XpItem>> fetchXpInfo() async {
    return _fetch<List<dynamic>, List<XpItem>>(
      '/xpInfo',
      (d) => List<Map<String, dynamic>>.from(d).map(XpItem.fromJson).toList(),
    );
  }

  Future<S> _fetch<T, S>(String path, S Function(T) parser) async {
    final response = await get('profile/$username$path');

    return Isolate.run(() => parser(json.decode(response.body) as T));
  }
}
