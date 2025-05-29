// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Calendar _$CalendarFromJson(Map json) => $checkedCreate('Calendar', json, (
  $checkedConvert,
) {
  final val = Calendar(
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    days: $checkedConvert(
      'days',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) =>
                    CalendarDay.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    season: $checkedConvert('season', (v) => v as String),
    yearIteration: $checkedConvert('yearIteration', (v) => (v as num).toInt()),
    version: $checkedConvert('version', (v) => (v as num).toInt()),
    requirements: $checkedConvert(
      'requirements',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CalendarToJson(Calendar instance) => <String, dynamic>{
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'days': instance.days.map((e) => e.toJson()).toList(),
  'season': instance.season,
  'yearIteration': instance.yearIteration,
  'version': instance.version,
  'requirements': instance.requirements,
};

CalendarDay _$CalendarDayFromJson(Map json) => $checkedCreate(
  'CalendarDay',
  json,
  ($checkedConvert) {
    final val = CalendarDay(
      day: $checkedConvert('day', (v) => (v as num).toInt()),
      events: $checkedConvert(
        'events',
        (v) =>
            (v as List<dynamic>)
                .map(
                  (e) => const CalendarEventConverter().fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$CalendarDayToJson(
  CalendarDay instance,
) => <String, dynamic>{
  'day': instance.day,
  'events': instance.events.map(const CalendarEventConverter().toJson).toList(),
};

CalendarChallenge _$CalendarChallengeFromJson(Map json) =>
    $checkedCreate('CalendarChallenge', json, ($checkedConvert) {
      final val = CalendarChallenge(
        type: $checkedConvert('type', (v) => v as String),
        challenge: $checkedConvert(
          'challenge',
          (v) => _$recordConvertAny(
            v,
            ($jsonValue) => (
              description: $jsonValue['description'] as String,
              title: $jsonValue['title'] as String,
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CalendarChallengeToJson(CalendarChallenge instance) =>
    <String, dynamic>{
      'type': instance.type,
      'challenge': <String, dynamic>{
        'description': instance.challenge.description,
        'title': instance.challenge.title,
      },
    };

$Rec _$recordConvertAny<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map);

CalendarUpgrade _$CalendarUpgradeFromJson(Map json) =>
    $checkedCreate('CalendarUpgrade', json, ($checkedConvert) {
      final val = CalendarUpgrade(
        type: $checkedConvert('type', (v) => v as String),
        upgrade: $checkedConvert(
          'upgrade',
          (v) => _$recordConvertAny(
            v,
            ($jsonValue) => (
              description: $jsonValue['description'] as String,
              title: $jsonValue['title'] as String,
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CalendarUpgradeToJson(CalendarUpgrade instance) =>
    <String, dynamic>{
      'type': instance.type,
      'upgrade': <String, dynamic>{
        'description': instance.upgrade.description,
        'title': instance.upgrade.title,
      },
    };

CalendarReward _$CalendarRewardFromJson(Map json) =>
    $checkedCreate('CalendarReward', json, ($checkedConvert) {
      final val = CalendarReward(
        type: $checkedConvert('type', (v) => v as String),
        reward: $checkedConvert('reward', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CalendarRewardToJson(CalendarReward instance) =>
    <String, dynamic>{'type': instance.type, 'reward': instance.reward};

CalendarBirthday _$CalendarBirthdayFromJson(Map json) => $checkedCreate(
  'CalendarBirthday',
  json,
  ($checkedConvert) {
    final val = CalendarBirthday(
      type: $checkedConvert('type', (v) => v as String),
      name: $checkedConvert('dialogueName', (v) => v as String),
      conversation: $checkedConvert('dialogueConvo', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {'name': 'dialogueName', 'conversation': 'dialogueConvo'},
);

Map<String, dynamic> _$CalendarBirthdayToJson(CalendarBirthday instance) =>
    <String, dynamic>{
      'type': instance.type,
      'dialogueName': instance.name,
      'dialogueConvo': instance.conversation,
    };
