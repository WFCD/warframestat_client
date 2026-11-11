import 'dart:convert';
import 'dart:io';

import 'abstract_fixture.dart';

class WarframestatFixture extends Fixture {
  new() : super(Directory('test/fixtures'));

  String loadAlert() {
    return loadKey('alerts');
  }

  String? loadArbitration() {
    return loadKey('arbitration');
  }

  String loadArchonHunt() {
    return loadKey('archonHunt');
  }

  String loadCambionCycle() {
    return loadKey('cambionCycle');
  }

  String loadCetusCycle() {
    return loadKey('cetusCycle');
  }

  String loadConclaveChallenges() {
    return loadKey('conclaveChallenges');
  }

  String loadConstructionProgress() {
    return loadKey('constructionProgress');
  }

  String loadDailyDeals() {
    return loadKey('dailyDeals');
  }

  String loadEarthCycle() {
    return loadKey('earthCycle');
  }

  String loadWorldEvents() {
    return loadKey('events');
  }

  String loadFissures() {
    return loadKey('fissures');
  }

  String loadFlashSales() {
    return loadKey('flashSales');
  }

  String loadGlobalUpgrades() {
    return loadKey('globalUpgrades');
  }

  String loadInvasions() {
    return loadKey('invasions');
  }

  String loadKuva() {
    return loadKey('kuva');
  }

  String loadNews() {
    return loadKey('news');
  }

  String loadNightwave() {
    return loadKey('nightwave');
  }

  String loadPersistentEnemies() {
    return loadKey('persistentEnemies');
  }

  String loadSentientOutpost() {
    return loadKey('sentientOutpost');
  }

  String loadSimaris() {
    return loadKey('simaris');
  }

  String loadSortie() {
    return loadKey('sortie');
  }

  String loadSteelPath() {
    return loadKey('steelPath');
  }

  String loadSyndicateMissions() {
    return loadKey('syndicateMissions');
  }

  String loadVallisCycle() {
    return loadKey('vallisCycle');
  }

  String loadVaultTrader() {
    return loadKey('vaultTrader');
  }

  String loadVoidTrader() {
    return loadKey('voidTrader');
  }

  String loadWeeklyChallenges() {
    return loadKey('weeklyChallenges');
  }

  String loadWorldstate() {
    return fixture('worldstate.json');
  }

  String loadKey(String key) {
    final state = loadWorldstate();
    final data = json.decode(state) as Map<String, dynamic>;

    return json.encode(data[key]);
  }
}
