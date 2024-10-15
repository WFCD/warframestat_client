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
          sortie: $checkedConvert('sortie',
              (v) => Sortie.fromJson(Map<String, dynamic>.from(v as Map))),
          vallisCycle: $checkedConvert('vallisCycle',
              (v) => VallisCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          voidTraders: $checkedConvert(
              'voidTraders',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Trader.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          vaultTrader: $checkedConvert('vaultTrader',
              (v) => Trader.fromJson(Map<String, dynamic>.from(v as Map))),
          sentientOutposts: $checkedConvert(
              'sentientOutposts',
              (v) => v == null
                  ? null
                  : SentientOutpost.fromJson(
                      Map<String, dynamic>.from(v as Map))),
          simaris: $checkedConvert('simaris',
              (v) => Simaris.fromJson(Map<String, dynamic>.from(v as Map))),
          steelPath: $checkedConvert('steelPath',
              (v) => SteelPath.fromJson(Map<String, dynamic>.from(v as Map))),
          zarimanCycle: $checkedConvert(
              'zarimanCycle',
              (v) =>
                  ZarimanCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          duviriCycle: $checkedConvert('duviriCycle',
              (v) => DuviriCycle.fromJson(Map<String, dynamic>.from(v as Map))),
          deepArchimedea: $checkedConvert(
              'deepArchimedea',
              (v) =>
                  DeepArchimedea.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$WorldstateToJson(Worldstate instance) {
  final val = <String, dynamic>{
    'timestamp': instance.timestamp.toIso8601String(),
    'alerts': instance.alerts.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('arbitration', instance.arbitration?.toJson());
  val['weeklyChallenges'] =
      instance.weeklyChallenges.map((e) => e.toJson()).toList();
  val['archonHunt'] = instance.archonHunt.toJson();
  val['cambionCycle'] = instance.cambionCycle.toJson();
  val['syndicateMissions'] =
      instance.syndicateMissions.map((e) => e.toJson()).toList();
  val['cetusCycle'] = instance.cetusCycle.toJson();
  val['conclaveChallenges'] =
      instance.conclaveChallenges.map((e) => e.toJson()).toList();
  val['constructionProgress'] = instance.constructionProgress.toJson();
  val['dailyDeals'] = instance.dailyDeals.map((e) => e.toJson()).toList();
  val['earthCycle'] = instance.earthCycle.toJson();
  val['events'] = instance.events.map((e) => e.toJson()).toList();
  val['fissures'] = instance.fissures.map((e) => e.toJson()).toList();
  val['flashSales'] = instance.flashSales.map((e) => e.toJson()).toList();
  val['globalUpgrades'] =
      instance.globalUpgrades.map((e) => e.toJson()).toList();
  val['invasions'] = instance.invasions.map((e) => e.toJson()).toList();
  val['kuva'] = instance.kuva.map((e) => e.toJson()).toList();
  val['news'] = instance.news.map((e) => e.toJson()).toList();
  writeNotNull('nightwave', instance.nightwave?.toJson());
  val['sortie'] = instance.sortie.toJson();
  val['vallisCycle'] = instance.vallisCycle.toJson();
  val['voidTraders'] = instance.voidTraders.map((e) => e.toJson()).toList();
  val['vaultTrader'] = instance.vaultTrader.toJson();
  writeNotNull('sentientOutposts', instance.sentientOutposts?.toJson());
  val['simaris'] = instance.simaris.toJson();
  val['steelPath'] = instance.steelPath.toJson();
  val['zarimanCycle'] = instance.zarimanCycle.toJson();
  val['duviriCycle'] = instance.duviriCycle.toJson();
  val['deepArchimedea'] = instance.deepArchimedea.toJson();
  return val;
}
