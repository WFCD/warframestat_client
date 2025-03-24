import 'dart:convert';
import 'dart:isolate';

import 'package:meta/meta.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template warframestat_client}
/// Exposes all endpoints pertaining to worldstate.
/// {@endtemplate}
class WorldstateClient extends WarframestatHttpClient {
  /// {@macro warframestat_client}
  WorldstateClient({super.language, super.ua, super.client});

  /// Retrives a fully translated [Worldstate].
  Future<Worldstate> fetchWorldstate() async {
    final worldstate = await _get<Map<String, dynamic>>('');

    return Worldstate.fromJson(worldstate);
  }

  /// Retrives a list of ongoing [Alert]s.
  Future<List<Alert>> fetchAlerts() async {
    final alerts = await _get<List<dynamic>>('/alerts');

    return alerts.map((e) => Alert.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives the current [Arbitration].
  Future<Arbitration> fetchArbitration() async {
    final arbitration = await _get<Map<String, dynamic>>('/arbitration');

    return Arbitration.fromJson(arbitration);
  }

  /// Retrives the currently ongoing ArchonHunt.
  Future<Sortie> fetchArchonHunt() async {
    final hunt = await _get<Map<String, dynamic>>('/archonHunt');

    return Sortie.fromJson(hunt);
  }

  /// Retrives the current cycle data for [CambionCycle].
  Future<CambionCycle> fetchCambionCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/cambionCycle');

    return CambionCycle.fromJson(cycle);
  }

  /// Retrives the current cycle data for [CetusCycle].
  Future<CetusCycle> fetchCetusCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/cetusCycle');

    return CetusCycle.fromJson(cycle);
  }

  /// Retrives a list of currently active [ConclaveChallenge]s.
  Future<List<ConclaveChallenge>> fetchConclaveChallenges() async {
    final challenges = await _get<List<dynamic>>('/conclaveChallenges');

    return challenges.map((e) => ConclaveChallenge.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives the current [ConstructionProgress] for razorback
  /// and the fomorian.
  ///
  /// I have no idea what [ConstructionProgress.unknownProgress] is for.
  Future<ConstructionProgress> fetchConstrcutionProgress() async {
    final progress = await _get<Map<String, dynamic>>('/constructionProgress');

    return ConstructionProgress.fromJson(progress);
  }

  /// Retrive the currently active darvo deal.
  Future<List<DailyDeal>> fetchDailyDeals() async {
    final deals = await _get<List<dynamic>>('/dailyDeals');

    return deals.map((e) => DailyDeal.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives data on the [EarthCycle].
  Future<EarthCycle> fetchEarthCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/earthCycle');

    return EarthCycle.fromJson(cycle);
  }

  /// Retrives a list of currently active Warframe [WorldEvent].
  Future<List<WorldEvent>> fetchEvents() async {
    final events = await _get<List<dynamic>>('/events');

    return events.map((e) => WorldEvent.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of ongoing void [Fissure]s.
  Future<List<Fissure>> fetchFissures() async {
    final fissures = await _get<List<dynamic>>('/fissures');

    return fissures.map((e) => Fissure.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of current [FlashSale]s that darvo has to offfer.
  ///
  /// Wonder why he has to sell them off so fast.
  Future<List<FlashSale>> fetchFlashSales() async {
    final sales = await _get<List<dynamic>>('/flashSales');

    return sales.map((e) => FlashSale.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrive a list of current [GlobalUpgrade].
  ///
  /// An example of this would be game wide credit booster.
  Future<List<GlobalUpgrade>> fetchGlobalUpgrades() async {
    final upgrades = await _get<List<dynamic>>('/globalUpgrades');

    return upgrades.map((e) => GlobalUpgrade.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of ongoing [Invasion]s.
  Future<List<Invasion>> fetchInvasions() async {
    final invasions = await _get<List<dynamic>>('/invasions');

    return invasions.map((e) => Invasion.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of currently active [Kuva] missions.
  @experimental
  Future<List<Kuva>> fetchKuvas() async {
    final kuvas = await _get<List<dynamic>>('kuva');

    return kuvas.map((e) => Kuva.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives a list of current Warframe [News].
  Future<List<News>> fetchNews() async {
    final news = await _get<List<dynamic>>('/news');

    return news.map((e) => News.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives the current [Nightwave].
  ///
  /// Returns null when there are no active nightwave.
  Future<Nightwave?> fetchNightwave() async {
    final nightwave = await _get<Map<String, dynamic>>('/nightwave');

    return Nightwave.fromJson(nightwave);
  }

  /// Retrives the current location of the sentient outpost.
  Future<SentientOutpost> fetchSentientOutpost() async {
    final outpost = await _get<Map<String, dynamic>>('/sentientOutpost');

    return SentientOutpost.fromJson(outpost);
  }

  /// Retrives the current status for Simaris' Sanctuary.
  Future<Simaris> fetchSimarisStatus() async {
    final target = await _get<Map<String, dynamic>>('/simaris');

    return Simaris.fromJson(target);
  }

  /// Retrives the currently active sortie.
  Future<Sortie> fetchSortie() async {
    final sortie = await _get<Map<String, dynamic>>('/sortie');

    return Sortie.fromJson(sortie);
  }

  /// Retrieves the current steel path mission data.
  Future<SteelPath> fetchSteelPath() async {
    final path = await _get<Map<String, dynamic>>('/steelPath');

    return SteelPath.fromJson(path);
  }

  /// Retrives a list of on going syndicate missions and bounties.
  Future<List<SyndicateMission>> fetchSyndicateMissions() async {
    final missions = await _get<List<dynamic>>('/syndicateMissions');

    return missions.map((e) => SyndicateMission.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Retrives the time the worldstate was last generated at.
  Future<DateTime> fetchTimestamp() async {
    final timestamp = await _get<String>('/timestamp');

    return DateTime.parse(timestamp);
  }

  /// Retrieves the data  on the current Orb Vallis cycle.
  Future<VallisCycle> fetchVallisCycle() async {
    final cycle = await _get<Map<String, dynamic>>('/vallisCycle');

    return VallisCycle.fromJson(cycle);
  }

  /// Retrives the current status and inventory of the void trader.
  Future<Trader> fetchVoidTrader() async {
    final trader = await _get<Map<String, dynamic>>('/voidTrader');

    return Trader.fromJson(trader);
  }

  Future<T> _get<T>(String path) async {
    final response = await get('pc$path');

    return Isolate.run(() => json.decode(response.body) as T);
  }
}
