// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nightwave.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nightwave _$NightwaveFromJson(Map json) => $checkedCreate('Nightwave', json, (
  $checkedConvert,
) {
  final val = Nightwave(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    active: $checkedConvert('active', (v) => v as bool),
    params: $checkedConvert(
      'params',
      (v) => Map<String, dynamic>.from(v as Map),
    ),
    rewardTypes: $checkedConvert(
      'rewardTypes',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    season: $checkedConvert('season', (v) => (v as num).toInt()),
    ta: $checkedConvert('ta', (v) => v as String?),
    phase: $checkedConvert('phase', (v) => (v as num).toInt()),
    possibleChallenges: $checkedConvert(
      'possibleChallenges',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => Challenge.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    activeChallenges: $checkedConvert(
      'activeChallenges',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => Challenge.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$NightwaveToJson(Nightwave instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'active': instance.active,
  'params': instance.params,
  'rewardTypes': instance.rewardTypes,
  'season': instance.season,
  if (instance.ta case final value?) 'ta': value,
  'phase': instance.phase,
  'possibleChallenges':
      instance.possibleChallenges.map((e) => e.toJson()).toList(),
  'activeChallenges': instance.activeChallenges.map((e) => e.toJson()).toList(),
};

Challenge _$ChallengeFromJson(Map json) =>
    $checkedCreate('Challenge', json, ($checkedConvert) {
      final val = Challenge(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        title: $checkedConvert('title', (v) => v as String),
        desc: $checkedConvert('desc', (v) => v as String),
        reputation: $checkedConvert('reputation', (v) => (v as num).toInt()),
        active: $checkedConvert('active', (v) => v as bool),
        isElite: $checkedConvert('isElite', (v) => v as bool),
        isDaily: $checkedConvert('isDaily', (v) => v as bool? ?? false),
      );
      return val;
    });

Map<String, dynamic> _$ChallengeToJson(Challenge instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.activation?.toIso8601String() case final value?)
    'activation': value,
  if (instance.expiry?.toIso8601String() case final value?) 'expiry': value,
  'title': instance.title,
  'desc': instance.desc,
  'reputation': instance.reputation,
  'active': instance.active,
  'isDaily': instance.isDaily,
  'isElite': instance.isElite,
};
