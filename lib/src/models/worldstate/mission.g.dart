// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map json) => $checkedCreate('Mission', json, (
  $checkedConvert,
) {
  final val = Mission(
    node: $checkedConvert('node', (v) => v as String),
    nodeKey: $checkedConvert('nodeKey', (v) => v as String?),
    faction: $checkedConvert('faction', (v) => v as String?),
    factionKey: $checkedConvert('factionKey', (v) => v as String?),
    reward: $checkedConvert(
      'reward',
      (v) => v == null
          ? null
          : Reward.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    maxEnemyLevel: $checkedConvert(
      'maxEnemyLevel',
      (v) => (v as num?)?.toInt(),
    ),
    minEnemyLevel: $checkedConvert(
      'minEnemyLevel',
      (v) => (v as num?)?.toInt(),
    ),
    maxWaveNum: $checkedConvert('maxWaveNum', (v) => (v as num?)?.toInt()),
    type: $checkedConvert('type', (v) => v as String),
    typeKey: $checkedConvert('typeKey', (v) => v as String?),
    nightmare: $checkedConvert('nightmare', (v) => v as bool?),
    archwingRequired: $checkedConvert('archwingRequired', (v) => v as bool?),
    isSharkwing: $checkedConvert('isSharkwing', (v) => v as bool?),
    enemySpec: $checkedConvert('enemySpec', (v) => v as String?),
    levelOverride: $checkedConvert('levelOverride', (v) => v as String?),
    advancedSpawners: $checkedConvert(
      'advancedSpawners',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    requiredItems: $checkedConvert(
      'requiredItems',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    consumeRequiredItems: $checkedConvert(
      'consumeRequiredItems',
      (v) => v as bool?,
    ),
    leadersAlwwaysAllowed: $checkedConvert(
      'leadersAlwwaysAllowed',
      (v) => v as bool?,
    ),
    levelAuras: $checkedConvert(
      'levelAuras',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    description: $checkedConvert('description', (v) => v as String?),
    exclusiveWeapon: $checkedConvert('exclusiveWeapon', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
  'node': instance.node,
  'nodeKey': ?instance.nodeKey,
  'faction': ?instance.faction,
  'factionKey': ?instance.factionKey,
  'reward': ?instance.reward?.toJson(),
  'maxEnemyLevel': ?instance.maxEnemyLevel,
  'minEnemyLevel': ?instance.minEnemyLevel,
  'maxWaveNum': ?instance.maxWaveNum,
  'type': instance.type,
  'typeKey': ?instance.typeKey,
  'nightmare': ?instance.nightmare,
  'archwingRequired': ?instance.archwingRequired,
  'isSharkwing': ?instance.isSharkwing,
  'enemySpec': ?instance.enemySpec,
  'levelOverride': ?instance.levelOverride,
  'advancedSpawners': ?instance.advancedSpawners,
  'requiredItems': ?instance.requiredItems,
  'consumeRequiredItems': ?instance.consumeRequiredItems,
  'leadersAlwwaysAllowed': ?instance.leadersAlwwaysAllowed,
  'levelAuras': ?instance.levelAuras,
  'description': ?instance.description,
  'exclusiveWeapon': ?instance.exclusiveWeapon,
};
