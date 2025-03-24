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
abstract class WarframestatHttpClient {
  /// {@macro wfcdclient}
  WarframestatHttpClient({http.Client? client, this.language = Language.en, this.ua})
    : _client = client ?? http.Client();

  final http.Client _client;

  /// The language that all request will be made for.
  final Language language;

  /// Custom user agent.
  ///
  /// May be required if there's an issue when returning results.
  final String? ua;

  /// Fetches Warframestat API endpoint.
  Future<http.Response> get(String path, {Map<String, dynamic>? query}) async {
    final requiredQueries = {'language': language.name, if (ua != null) 'ua': ua};

    if (query != null) {
      query.addAll(requiredQueries);
    } else {
      query = requiredQueries;
    }

    final uri = Uri(scheme: 'https', host: authority, path: path, queryParameters: query);

    return _client.get(uri).timeout(_timeout);
  }
}
