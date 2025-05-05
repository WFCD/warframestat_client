import 'package:warframestat_client/warframestat_client.dart';

/// {@template profile_client}
/// Profile client to interact with the profile endpoint.
///
/// Unstable as DE can change or remove things at anytime
/// {@endtemplate}
class ProfileClient extends WarframestatHttpClient {
  /// {@macro profile_client}
  ProfileClient({required this.playerId, super.language, super.ua, super.client});

  /// Player username
  final String playerId;

  /// Fetch player profile
  ///
  /// Throws:
  ///
  /// * [ProfileNotFound] if the give profile doesn't exist
  Future<Profile> fetchProfile() async {
    final response = await _fetch<Map<String, dynamic>>('');

    return Profile.fromJson(response);
  }

  /// Fetch player's XP info
  ///
  /// Throws:
  ///
  /// * [ProfileNotFound] if the give profile doesn't exist
  Future<List<XpItem>> fetchXpInfo() async {
    final response = await _fetch<List<dynamic>>('/xpInfo');

    return response.map((i) => XpItem.fromJson(i as Map<String, dynamic>)).toList();
  }

  Future<T> _fetch<T>(String path) async {
    final response = await get('profile/$playerId$path');
    if (response.statusCode != 200) throw ProfileNotFound(playerId);

    return jsonDecode<T>(response.body);
  }
}
