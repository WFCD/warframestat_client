import 'dart:convert';
import 'dart:io';

import 'abstract_fixture.dart';

class WarframestatFixture extends Fixture {
  WarframestatFixture() : super(Directory('test/fixtures'));

  Future<String> loadAlert() {
    return loadKey('alerts');
  }

  Future<String> loadArbitration() {
    return loadKey('arbitration');
  }

  Future<String> loadArchonHunt() {
    return loadKey('archonHunt');
  }

  Future<String> loadCambionCycle() {
    return loadKey('cambionCycle');
  }

  Future<String> loadCetusCycle() {
    return loadKey('cetusCycle');
  }

  Future<String> loadConclaveChallenges() {
    return loadKey('conclaveChallenges');
  }

  Future<String> loadConstructionProgress() {
    return loadKey('constructionProgress');
  }

  Future<String> loadDailyDeals() {
    return loadKey('dailyDeals');
  }

  Future<String> loadEarthCycle() {
    return loadKey('earthCycle');
  }

  Future<String> loadWorldEvents() {
    return loadKey('events');
  }

  Future<String> loadFissures() {
    return loadKey('fissures');
  }

  Future<String> loadFlashSales() {
    return loadKey('flashSales');
  }

  Future<String> loadGlobalUpgrades() {
    return loadKey('globalUpgrades');
  }

  Future<String> loadInvasions() {
    return loadKey('invasions');
  }

  Future<String> loadKuva() {
    return loadKey('kuva');
  }

  Future<String> loadNews() {
    return loadKey('news');
  }

  Future<String> loadNightwave() {
    return loadKey('nightwave');
  }

  Future<String> loadPersistentEnemies() {
    return loadKey('persistentEnemies');
  }

  Future<String> loadSentientOutpost() {
    return loadKey('sentientOutpost');
  }

  Future<String> loadSimaris() {
    return loadKey('simaris');
  }

  Future<String> loadSortie() {
    return loadKey('sortie');
  }

  Future<String> loadSteelPath() {
    return loadKey('steelPath');
  }

  Future<String> loadSyndicateMissions() {
    return loadKey('syndicateMissions');
  }

  Future<String> loadVallisCycle() {
    return loadKey('vallisCycle');
  }

  Future<String> loadVaultTrader() {
    return loadKey('vaultTrader');
  }

  Future<String> loadVoidTrader() {
    return loadKey('voidTrader');
  }

  Future<String> loadWeeklyChallenges() {
    return loadKey('weeklyChallenges');
  }

  Future<String> loadWorldstate() {
    return fixture('worldstate.json');
  }

  Future<String> loadKey(String key) async {
    final state = await loadWorldstate();
    final data = json.decode(state) as Map<String, dynamic>;

    return json.encode(data[key]);
  }
}
