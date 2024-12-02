// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map json) => $checkedCreate(
      'Mission',
      json,
      ($checkedConvert) {
        final val = Mission(
          node: $checkedConvert('node', (v) => v as String),
          nodeKey: $checkedConvert('nodeKey', (v) => v as String?),
          faction: $checkedConvert('faction', (v) => v as String?),
          factionKey: $checkedConvert('factionKey', (v) => v as String?),
          reward: $checkedConvert(
              'reward',
              (v) => v == null
                  ? null
                  : Reward.fromJson(Map<String, dynamic>.from(v as Map))),
          maxEnemyLevel:
              $checkedConvert('maxEnemyLevel', (v) => (v as num?)?.toInt()),
          minEnemyLevel:
              $checkedConvert('minEnemyLevel', (v) => (v as num?)?.toInt()),
          maxWaveNum:
              $checkedConvert('maxWaveNum', (v) => (v as num?)?.toInt()),
          type: $checkedConvert('type', (v) => v as String),
          typeKey: $checkedConvert('typeKey', (v) => v as String?),
          nightmare: $checkedConvert('nightmare', (v) => v as bool?),
          archwingRequired:
              $checkedConvert('archwingRequired', (v) => v as bool?),
          isSharkwing: $checkedConvert('isSharkwing', (v) => v as bool?),
          enemySpec: $checkedConvert('enemySpec', (v) => v as String?),
          levelOverride: $checkedConvert('levelOverride', (v) => v as String?),
          advancedSpawners: $checkedConvert('advancedSpawners',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          requiredItems: $checkedConvert('requiredItems',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          consumeRequiredItems:
              $checkedConvert('consumeRequiredItems', (v) => v as bool?),
          leadersAlwwaysAllowed:
              $checkedConvert('leadersAlwwaysAllowed', (v) => v as bool?),
          levelAuras: $checkedConvert('levelAuras',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          description: $checkedConvert('description', (v) => v as String?),
          exclusiveWeapon:
              $checkedConvert('exclusiveWeapon', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
      'node': instance.node,
      if (instance.nodeKey case final value?) 'nodeKey': value,
      if (instance.faction case final value?) 'faction': value,
      if (instance.factionKey case final value?) 'factionKey': value,
      if (instance.reward?.toJson() case final value?) 'reward': value,
      if (instance.maxEnemyLevel case final value?) 'maxEnemyLevel': value,
      if (instance.minEnemyLevel case final value?) 'minEnemyLevel': value,
      if (instance.maxWaveNum case final value?) 'maxWaveNum': value,
      'type': instance.type,
      if (instance.typeKey case final value?) 'typeKey': value,
      if (instance.nightmare case final value?) 'nightmare': value,
      if (instance.archwingRequired case final value?)
        'archwingRequired': value,
      if (instance.isSharkwing case final value?) 'isSharkwing': value,
      if (instance.enemySpec case final value?) 'enemySpec': value,
      if (instance.levelOverride case final value?) 'levelOverride': value,
      if (instance.advancedSpawners case final value?)
        'advancedSpawners': value,
      if (instance.requiredItems case final value?) 'requiredItems': value,
      if (instance.consumeRequiredItems case final value?)
        'consumeRequiredItems': value,
      if (instance.leadersAlwwaysAllowed case final value?)
        'leadersAlwwaysAllowed': value,
      if (instance.levelAuras case final value?) 'levelAuras': value,
      if (instance.description case final value?) 'description': value,
      if (instance.exclusiveWeapon case final value?) 'exclusiveWeapon': value,
    };
