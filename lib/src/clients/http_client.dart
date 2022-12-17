import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:warframestat_client/src/enums.dart';

/// Base api url.
@visibleForTesting
const authority = 'api.warframestat.us';

const _timeout = Duration(seconds: 60);

/// {@template wfcdclient}
/// Http client for all other clients.
/// {@endtemplate}
abstract class WarframestatClient {
  /// {@macro wfcdclient}
  WarframestatClient({
    http.Client? client,
    this.language = Language.en,
    this.ua,
  }) : _client = client ?? http.Client();

  /// The language that all request will be made for.
  final Language language;

  /// Custom user agent.
  ///
  /// May be required if there's an issue when returning results.
  final String? ua;

  final http.Client _client;

  /// Fetches Warframestat API endpoint.
  Future<http.Response> get(String path) async {
    final headers = {'language': language.name, if (ua != null) 'ua': ua};
    final uri = Uri.https(authority, path, headers);

    return _client.get(uri).timeout(_timeout);
  }
}
