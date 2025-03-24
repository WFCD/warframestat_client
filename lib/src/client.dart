import 'package:http/http.dart';
import 'package:warframestat_client/src/clients/clients.dart';

/// {@template warframestat_client}
/// Entry point for all Warframestat clients
/// {@endtemplate}
class WarframestatClient {
  /// {@macro warframestat_client}
  WarframestatClient({Client? client}) : _client = client ?? Client();

  final Client _client;

  /// Profile endpoints
  ProfileClient profile(String playerId) => ProfileClient(playerId: playerId, client: _client);

  /// SynthTarget endpoints
  SynthTargetClient get synthTargets => SynthTargetClient(client: _client);

  /// Worldstate endpoints
  WorldstateClient get worldstate => WorldstateClient(client: _client);

  /// Warframe-items endpoints
  WarframeItemsClient get warframeItems => WarframeItemsClient(client: _client);
}
