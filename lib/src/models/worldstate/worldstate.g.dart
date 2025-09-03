// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'worldstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worldstate _$WorldstateFromJson(
  Map json,
) => $checkedCreate('Worldstate', json, ($checkedConvert) {
  final val = Worldstate(
    timestamp: $checkedConvert('timestamp', (v) => DateTime.parse(v as String)),
    alerts: $checkedConvert(
      'alerts',
      (v) => (v as List<dynamic>)
          .map((e) => Alert.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    arbitration: $checkedConvert(
      'arbitration',
      (v) => v == null
          ? null
          : Arbitration.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    weeklyChallenges: $checkedConvert(
      'weeklyChallenges',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                ConclaveChallenge.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    archonHunt: $checkedConvert(
      'archonHunt',
      (v) => Sortie.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    cambionCycle: $checkedConvert(
      'cambionCycle',
      (v) => CambionCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    syndicateMissions: $checkedConvert(
      'syndicateMissions',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                SyndicateMission.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    cetusCycle: $checkedConvert(
      'cetusCycle',
      (v) => CetusCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    conclaveChallenges: $checkedConvert(
      'conclaveChallenges',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ConclaveChallenge.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    constructionProgress: $checkedConvert(
      'constructionProgress',
      (v) => ConstructionProgress.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    dailyDeals: $checkedConvert(
      'dailyDeals',
      (v) => (v as List<dynamic>)
          .map((e) => DailyDeal.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    earthCycle: $checkedConvert(
      'earthCycle',
      (v) => EarthCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    events: $checkedConvert(
      'events',
      (v) => (v as List<dynamic>)
          .map((e) => WorldEvent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    fissures: $checkedConvert(
      'fissures',
      (v) => (v as List<dynamic>)
          .map((e) => Fissure.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    flashSales: $checkedConvert(
      'flashSales',
      (v) => (v as List<dynamic>)
          .map((e) => FlashSale.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    globalUpgrades: $checkedConvert(
      'globalUpgrades',
      (v) => (v as List<dynamic>)
          .map(
            (e) => GlobalUpgrade.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    invasions: $checkedConvert(
      'invasions',
      (v) => (v as List<dynamic>)
          .map((e) => Invasion.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    kuva: $checkedConvert(
      'kuva',
      (v) => (v as List<dynamic>)
          .map((e) => Kuva.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    news: $checkedConvert(
      'news',
      (v) => (v as List<dynamic>)
          .map((e) => News.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    nightwave: $checkedConvert(
      'nightwave',
      (v) => v == null
          ? null
          : Nightwave.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    sortie: $checkedConvert(
      'sortie',
      (v) => Sortie.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    vallisCycle: $checkedConvert(
      'vallisCycle',
      (v) => VallisCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    voidTraders: $checkedConvert(
      'voidTraders',
      (v) => (v as List<dynamic>)
          .map((e) => Trader.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    vaultTrader: $checkedConvert(
      'vaultTrader',
      (v) => Trader.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    sentientOutposts: $checkedConvert(
      'sentientOutposts',
      (v) => v == null
          ? null
          : SentientOutpost.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    simaris: $checkedConvert(
      'simaris',
      (v) => Simaris.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    steelPath: $checkedConvert(
      'steelPath',
      (v) => SteelPath.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    zarimanCycle: $checkedConvert(
      'zarimanCycle',
      (v) => ZarimanCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    duviriCycle: $checkedConvert(
      'duviriCycle',
      (v) => DuviriCycle.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    kinepage: $checkedConvert(
      'kinepage',
      (v) => Kinepage.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    deepArchimedea: $checkedConvert(
      'deepArchimedea',
      (v) => v == null
          ? null
          : Archimedea.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    calendar: $checkedConvert(
      'calendar',
      (v) => Calendar.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    temporalArchimedea: $checkedConvert(
      'temporalArchimedea',
      (v) => v == null
          ? null
          : Archimedea.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
  );
  return val;
});

Map<String, dynamic> _$WorldstateToJson(Worldstate instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'alerts': instance.alerts.map((e) => e.toJson()).toList(),
      'arbitration': ?instance.arbitration?.toJson(),
      'weeklyChallenges': ?instance.weeklyChallenges
          ?.map((e) => e.toJson())
          .toList(),
      'archonHunt': instance.archonHunt.toJson(),
      'cambionCycle': instance.cambionCycle.toJson(),
      'syndicateMissions': instance.syndicateMissions
          .map((e) => e.toJson())
          .toList(),
      'cetusCycle': instance.cetusCycle.toJson(),
      'conclaveChallenges': instance.conclaveChallenges
          .map((e) => e.toJson())
          .toList(),
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
      'nightwave': ?instance.nightwave?.toJson(),
      'sortie': instance.sortie.toJson(),
      'vallisCycle': instance.vallisCycle.toJson(),
      'voidTraders': instance.voidTraders.map((e) => e.toJson()).toList(),
      'vaultTrader': instance.vaultTrader.toJson(),
      'sentientOutposts': ?instance.sentientOutposts?.toJson(),
      'simaris': instance.simaris.toJson(),
      'steelPath': instance.steelPath.toJson(),
      'zarimanCycle': instance.zarimanCycle.toJson(),
      'duviriCycle': instance.duviriCycle.toJson(),
      'kinepage': instance.kinepage.toJson(),
      'deepArchimedea': ?instance.deepArchimedea?.toJson(),
      'temporalArchimedea': ?instance.temporalArchimedea?.toJson(),
      'calendar': instance.calendar.toJson(),
    };
