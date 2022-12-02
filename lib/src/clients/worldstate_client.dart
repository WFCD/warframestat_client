import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:warframestat_client/src/enums.dart';
import 'package:warframestat_client/src/models.dart';

/// {@template warframestat_client}
/// Exposes all endpoints pertaining to worldstate.
/// {@endtemplate}
class WorldstateClient {
  /// {@macro warframestat_client}
  WorldstateClient({
    required this.platform,
    required this.language,
    this.ua,
    http.Client? client,
  }) : _client = client ?? http.Client();

  /// The game platform all request will be made for.
  final GamePlatform platform;

  /// The language results will be returned in.
  ///
  /// Use [Language] as it has all the langauges supported by the API.
  final Language language;

  /// Custom user agent.
  ///
  /// May be required if there's an issue when returning results.
  final String? ua;

  final http.Client _client;

  static const _authority = 'api.warframestat.us';

  /// Retrives a fully translated [Worldstate].
  Future<Worldstate> currentState() async {
    final worldstate = await _get<Map<String, dynamic>>('');

    return Worldstate.fromJson(worldstate);
  }

  /// Retrives a list of ongoing [Alert]s.
  Future<List<Alert>> getAlerts() async {
    final alerts = await _get<List<dynamic>>('/alerts');

    return alerts
        .map((e) => Alert.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives the current [Arbitration].
  Future<Arbitration> getArbitration() async {
    final arbitration = await _get<Map<String, dynamic>>('/arbitration');

    return Arbitration.fromJson(arbitration);
  }

  /// Retrives the currently ongoing ArchonHunt.
  Future<Sortie> getArchonHunt() async {
    final hunt = await _get<Map<String, dynamic>>('/archonHunt');

    return Sortie.fromJson(hunt);
  }

  /// Retrives the current cycle data for [CambionCycle].
  Future<CambionCycle> getCambionCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/cambionCycle');

    return CambionCycle.fromJson(cycle);
  }

  /// Retrives the current cycle data for [CetusCycle].
  Future<CetusCycle> getCetusCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/cambionCycle');

    return CetusCycle.fromJson(cycle);
  }

  /// Retrives a list of currently active [ConclaveChallenge]s.
  Future<List<ConclaveChallenge>> getConclaveChallenges() async {
    final challenges = await _get<List<dynamic>>('/conclaveChallenges');

    return challenges
        .map((e) => ConclaveChallenge.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives the current [ConstructionProgress] for razorback
  /// and the fomorian.
  ///
  /// I have no idea what [ConstructionProgress.unknownProgress] is for.
  Future<ConstructionProgress> getConstrcutionProgress() async {
    final progress = await _get<Map<String, dynamic>>('/constructionProgress');

    return ConstructionProgress.fromJson(progress);
  }

  /// Retrive the currently active darvo deal.
  Future<List<DailyDeal>> getDailyDeals() async {
    final deals = await _get<List<dynamic>>('/dailyDeals');

    return deals
        .map((e) => DailyDeal.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives data on the [EarthCycle].
  Future<EarthCycle> getEarthCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/earthCycle');

    return EarthCycle.fromJson(cycle);
  }

  /// Retrives a list of currently active Warframe [WorldEvent].
  Future<List<WorldEvent>> getEvents() async {
    final events = await _get<List<dynamic>>('/events');

    return events
        .map((e) => WorldEvent.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives a list of ongoing void [Fissure]s.
  Future<List<Fissure>> getFissures() async {
    final fissures = await _get<List<dynamic>>('/fissures');

    return fissures
        .map((e) => Fissure.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives a list of current [FlashSale]s that darvo has to offfer.
  ///
  /// Wonder why he has to sell them off so fast.
  Future<List<FlashSale>> getFlashSales() async {
    final sales = await _get<List<dynamic>>('/flashSales');

    return sales
        .map((e) => FlashSale.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrive a list of current [GlobalUpgrade].
  ///
  /// An example of this would be game wide credit booster.
  Future<List<GlobalUpgrade>> getGlobalUpgrades() async {
    final upgrades = await _get<List<dynamic>>('/globalUpgrades');

    return upgrades
        .map((e) => GlobalUpgrade.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives a list of ongoing [Invasion]s.
  Future<List<Invasion>> getInvasions() async {
    final invasions = await _get<List<dynamic>>('/invasions');

    return invasions
        .map((e) => Invasion.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives a list of currently active [Kuva] missions.
  @experimental
  Future<List<Kuva>> getKuvas() async {
    final kuvas = await _get<List<dynamic>>('kuva');

    return kuvas.map((e) => Kuva.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of current Warframe [News].
  Future<List<News>> getNews() async {
    final news = await _get<List<dynamic>>('/news');

    return news.map((e) => News.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives the current [Nightwave].
  ///
  /// Returns null when there are no active nightwave.
  Future<Nightwave?> getNightwave() async {
    final nightwave = await _get<Map<String, dynamic>>('/nightwave');

    return Nightwave.fromJson(nightwave);
  }

  /// Retrives a list of currently active acolytes.
  @Deprecated('See PersistentEnemy model.')
  Future<List<PersistentEnemy>> getPersistentEnemies() async {
    final enemies = await _get<List<dynamic>>('/persistentEnemies');

    return enemies
        .map((e) => PersistentEnemy.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives the current location of the sentient outpost.
  Future<SentientOutpost> getSentientOutpost() async {
    final outpost = await _get<Map<String, dynamic>>('/sentientOutpost');

    return SentientOutpost.fromJson(outpost);
  }

  /// Retrives the current status for Simaris' Sanctuary.
  Future<Simaris> getSimarisStatus() async {
    final target = await _get<Map<String, dynamic>>('/simaris');

    return Simaris.fromJson(target);
  }

  /// Retrives the currently active sortie.
  Future<Sortie> getSortie() async {
    final sortie = await _get<Map<String, dynamic>>('/sortie');

    return Sortie.fromJson(sortie);
  }

  /// Retrieves the current steel path mission data.
  Future<SteelPath> getSteelPath() async {
    final path = await _get<Map<String, dynamic>>('/steelPath');

    return SteelPath.fromJson(path);
  }

  /// Retrives a list of on going syndicate missions and bounties.
  Future<List<SyndicateMission>> getSyndicateMissions() async {
    final missions = await _get<List<dynamic>>('/syndicateMissions');

    return missions
        .map((e) => SyndicateMission.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retrives the time the worldstate was last generated at.
  Future<DateTime> getTimestamp() async {
    final timestamp = await _get<String>('/timestamp');

    return DateTime.parse(timestamp);
  }

  /// Retrieves the data  on the current Orb Vallis cycle.
  Future<VallisCycle> getVallisCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/vallisCycle');

    return VallisCycle.fromJson(cycle);
  }

  /// Retrives the current status and inventory of the void trader.
  Future<Trader> getVoidTrader() async {
    final trader = await _get<Map<String, dynamic>>('/voidTrader');

    return Trader.fromJson(trader);
  }

  Future<T> _get<T>(String path, [String? ua]) async {
    final headers = {'language': language.name, if (ua != null) 'ua': ua};
    final uri = Uri.https(_authority, '${platform.name}$path', headers);
    final response = await _client.get(uri).timeout(const Duration(seconds: 5));

    return json.decode(response.body) as T;
  }
}
