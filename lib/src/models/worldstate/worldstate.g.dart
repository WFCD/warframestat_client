// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worldstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worldstate _$WorldstateFromJson(Map json) => $checkedCreate(
      'Worldstate',
      json,
      ($checkedConvert) {
        final val = Worldstate(
          timestamp:
              $checkedConvert('timestamp', (v) => DateTime.parse(v as String)),
          alerts: $checkedConvert(
              'alerts',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Alert.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          arbitration: $checkedConvert(
              'arbitration',
              (v) => v == null
                  ? null
                  : Arbitration.fromJson(Map<String, dynamic>.from(v as Map))),
          weeklyChallenges: $checkedConvert(
              'weeklyChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) => ConclaveChallenge.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          archonHunt: $checkedConvert('archonHunt',
              (v) => Sortie.fromJson(Map<String, dynamic>.from(v as Map))),
          cambionCycle: $checkedConvert(
              'cambionCycle',
              (v) =>
                  CambionCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          syndicateMissions: $checkedConvert(
              'syndicateMissions',
              (v) => (v as List<dynamic>)
                  .map((e) => SyndicateMission.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          cetusCycle: $checkedConvert('cetusCycle',
              (v) => CetusCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          conclaveChallenges: $checkedConvert(
              'conclaveChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) => ConclaveChallenge.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          constructionProgress: $checkedConvert(
              'constructionProgress',
              (v) => ConstructionProgress.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          dailyDeals: $checkedConvert(
              'dailyDeals',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      DailyDeal.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          earthCycle: $checkedConvert('earthCycle',
              (v) => EarthCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          events: $checkedConvert(
              'events',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      WorldEvent.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          fissures: $checkedConvert(
              'fissures',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Fissure.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          flashSales: $checkedConvert(
              'flashSales',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      FlashSale.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          globalUpgrades: $checkedConvert(
              'globalUpgrades',
              (v) => (v as List<dynamic>)
                  .map((e) => GlobalUpgrade.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          invasions: $checkedConvert(
              'invasions',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Invasion.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          kuva: $checkedConvert(
              'kuva',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => Kuva.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          news: $checkedConvert(
              'news',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => News.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          nightwave: $checkedConvert(
              'nightwave',
              (v) => v == null
                  ? null
                  : Nightwave.fromJson(Map<String, dynamic>.from(v as Map))),
          persistentEnemies: $checkedConvert(
              'persistentEnemies',
              (v) => (v as List<dynamic>)
                  .map((e) => PersistentEnemy.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          sortie: $checkedConvert('sortie',
              (v) => Sortie.fromJson(Map<String, dynamic>.from(v as Map))),
          vallisCycle: $checkedConvert('vallisCycle',
              (v) => VallisCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          voidTrader: $checkedConvert('voidTrader',
              (v) => Trader.fromJson(Map<String, dynamic>.from(v as Map))),
          vaultTrader: $checkedConvert('vaultTrader',
              (v) => Trader.fromJson(Map<String, dynamic>.from(v as Map))),
          sentientOutposts: $checkedConvert(
              'sentientOutposts',
              (v) => SentientOutpost.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          simaris: $checkedConvert('simaris',
              (v) => Simaris.fromJson(Map<String, dynamic>.from(v as Map))),
          steelPath: $checkedConvert('steelPath',
              (v) => SteelPath.fromJson(Map<String, dynamic>.from(v as Map))),
          zarimanCycle: $checkedConvert(
              'zarimanCycle',
              (v) =>
                  ZarimanCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          darkSectors:
              $checkedConvert('darkSectors', (v) => v as List<dynamic>),
        );
        return val;
      },
    );

Map<String, dynamic> _$WorldstateToJson(Worldstate instance) {
  final val = <String, dynamic>{
    'timestamp': instance.timestamp.toIso8601String(),
    'alerts': instance.alerts.map((e) => e.toJson()).toList(),
    'arbitration': instance.arbitration?.toJson(),
    'weeklyChallenges':
        instance.weeklyChallenges.map((e) => e.toJson()).toList(),
    'archonHunt': instance.archonHunt.toJson(),
    'cambionCycle': instance.cambionCycle.toJson(),
    'syndicateMissions':
        instance.syndicateMissions.map((e) => e.toJson()).toList(),
    'cetusCycle': instance.cetusCycle.toJson(),
    'conclaveChallenges':
        instance.conclaveChallenges.map((e) => e.toJson()).toList(),
    'constructionProgress': instance.constructionProgress.toJson(),
    'dailyDeals': instance.dailyDeals.map((e) => e.toJson()).toList(),
    'earthCycle': instance.earthCycle.toJson(),
    'events': instance.events.map((e) => e.toJson()).toList(),
    'fissures': instance.fissures.map((e) => e.toJson()).toList(),
    'flashSales': instance.flashSales.map((e) => e.toJson()).toList(),
    'globalUpgrades': instance.globalUpgrades.map((e) => e.toJson()).toList(),
    'invasions': instance.invasions.map((e) => e.toJson()).toList(),
    'kuva': instance.kuva.map((e) => e.toJson()).toList(),
    'news': instance.news.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nightwave', instance.nightwave?.toJson());
  val['persistentEnemies'] =
      instance.persistentEnemies.map((e) => e.toJson()).toList();
  val['sortie'] = instance.sortie.toJson();
  val['vallisCycle'] = instance.vallisCycle.toJson();
  val['voidTrader'] = instance.voidTrader.toJson();
  val['vaultTrader'] = instance.vaultTrader.toJson();
  val['sentientOutposts'] = instance.sentientOutposts.toJson();
  val['simaris'] = instance.simaris.toJson();
  val['steelPath'] = instance.steelPath.toJson();
  val['zarimanCycle'] = instance.zarimanCycle.toJson();
  val['darkSectors'] = instance.darkSectors;
  return val;
}
