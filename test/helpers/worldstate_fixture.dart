import 'dart:io';

import 'abstract_fixture.dart';

class WarframestatFixture extends Fixture {
  WarframestatFixture() : super(Directory('test/fixtures'));

  Future<String> loadAlertFixture() {
    return fixture('alerts.json');
  }

  Future<String> loadArbitrationFixture() {
    return fixture('arbitration.json');
  }

  Future<String> loadArchonHuntFixture() {
    return fixture('archonHunt.json');
  }

  Future<String> loadCambionCycleFixture() {
    return fixture('cambionCycle.json');
  }

  Future<String> loadCetusCycle() {
    return fixture('cetusCycle.json');
  }

  Future<String> loadDailyDeals() {
    return fixture('dailyDeals.json');
  }

  Future<String> loadEarthCycle() {
    return fixture('earthCycle.json');
  }

  Future<String> loadWorldEvents() {
    return fixture('events.json');
  }

  Future<String> loadFissures() {
    return fixture('fissures.json');
  }

  Future<String> loadFlashSales() {
    return fixture('flashSales.json');
  }

  Future<String> loadGlobalUpgrades() {
    return fixture('globalUpgrades.json');
  }

  Future<String> loadInvasions() {
    return fixture('invasions.json');
  }

  Future<String> loadKuva() {
    return fixture('kuva.json');
  }

  Future<String> loadNews() {
    return fixture('news.json');
  }

  Future<String> loadNightwave() {
    return fixture('nightwave.json');
  }

  Future<String> loadPersistentEnemies() {
    return fixture('persistentEnemies.json');
  }

  Future<String> loadSentientOutpost() {
    return fixture('sentientOutpost.json');
  }

  Future<String> loadSimaris() {
    return fixture('simaris.json');
  }

  Future<String> loadSortieFixture() {
    return fixture('sortie.json');
  }

  Future<String> loadSteelPath() {
    return fixture('steelPath.json');
  }

  Future<String> loadSyndicateMissions() {
    return fixture('syndicateMissions.json');
  }

  Future<String> loadVallisCycle() {
    return fixture('vallisCycle.json');
  }

  Future<String> loadVaultTrader() {
    return fixture('vaultTrader.json');
  }

  Future<String> loadVoidTrader() {
    return fixture('voidTrader.json');
  }

  Future<String> loadWeeklyChallenges() {
    return fixture('weeklyChallenges');
  }

  Future<String> loadWorldstate() {
    return fixture('worldstate.json');
  }
}
