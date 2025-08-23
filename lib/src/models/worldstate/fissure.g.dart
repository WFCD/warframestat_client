// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'fissure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fissure _$FissureFromJson(Map json) =>
    $checkedCreate('Fissure', json, ($checkedConvert) {
      final val = Fissure(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        active: $checkedConvert('active', (v) => v as bool),
        node: $checkedConvert('node', (v) => v as String),
        expired: $checkedConvert('expired', (v) => v as bool),
        missionType: $checkedConvert('missionType', (v) => v as String),
        missionKey: $checkedConvert('missionKey', (v) => v as String?),
        tier: $checkedConvert('tier', (v) => v as String),
        tierNum: $checkedConvert('tierNum', (v) => (v as num).toInt()),
        enemy: $checkedConvert('enemy', (v) => v as String),
        enemyKey: $checkedConvert('enemyKey', (v) => v as String?),
        isStorm: $checkedConvert('isStorm', (v) => v as bool),
        isHard: $checkedConvert('isHard', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$FissureToJson(Fissure instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'active': instance.active,
  'node': instance.node,
  'expired': instance.expired,
  'missionType': instance.missionType,
  'missionKey': ?instance.missionKey,
  'tier': instance.tier,
  'tierNum': instance.tierNum,
  'enemy': instance.enemy,
  'enemyKey': ?instance.enemyKey,
  'isStorm': instance.isStorm,
  'isHard': instance.isHard,
};
