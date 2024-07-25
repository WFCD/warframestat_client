// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nightwave _$NightwaveFromJson(Map json) => $checkedCreate(
      'Nightwave',
      json,
      ($checkedConvert) {
        final val = Nightwave(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          params: $checkedConvert(
              'params', (v) => Map<String, dynamic>.from(v as Map)),
          rewardTypes: $checkedConvert('rewardTypes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          season: $checkedConvert('season', (v) => (v as num).toInt()),
          ta: $checkedConvert('ta', (v) => v as String?),
          phase: $checkedConvert('phase', (v) => (v as num).toInt()),
          possibleChallenges: $checkedConvert(
              'possibleChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Challenge.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          activeChallenges: $checkedConvert(
              'activeChallenges',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Challenge.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$NightwaveToJson(Nightwave instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'activation': instance.activation.toIso8601String(),
    'expiry': instance.expiry.toIso8601String(),
    'active': instance.active,
    'params': instance.params,
    'rewardTypes': instance.rewardTypes,
    'season': instance.season,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ta', instance.ta);
  val['phase'] = instance.phase;
  val['possibleChallenges'] =
      instance.possibleChallenges.map((e) => e.toJson()).toList();
  val['activeChallenges'] =
      instance.activeChallenges.map((e) => e.toJson()).toList();
  return val;
}

Challenge _$ChallengeFromJson(Map json) => $checkedCreate(
      'Challenge',
      json,
      ($checkedConvert) {
        final val = Challenge(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          title: $checkedConvert('title', (v) => v as String),
          desc: $checkedConvert('desc', (v) => v as String),
          reputation: $checkedConvert('reputation', (v) => (v as num).toInt()),
          active: $checkedConvert('active', (v) => v as bool),
          isElite: $checkedConvert('isElite', (v) => v as bool),
          isDaily: $checkedConvert('isDaily', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChallengeToJson(Challenge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['title'] = instance.title;
  val['desc'] = instance.desc;
  val['reputation'] = instance.reputation;
  val['active'] = instance.active;
  val['isDaily'] = instance.isDaily;
  val['isElite'] = instance.isElite;
  return val;
}
