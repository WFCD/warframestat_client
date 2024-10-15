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

Map<String, dynamic> _$MissionToJson(Mission instance) {
  final val = <String, dynamic>{
    'node': instance.node,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nodeKey', instance.nodeKey);
  writeNotNull('faction', instance.faction);
  writeNotNull('factionKey', instance.factionKey);
  writeNotNull('reward', instance.reward?.toJson());
  writeNotNull('maxEnemyLevel', instance.maxEnemyLevel);
  writeNotNull('minEnemyLevel', instance.minEnemyLevel);
  writeNotNull('maxWaveNum', instance.maxWaveNum);
  val['type'] = instance.type;
  writeNotNull('typeKey', instance.typeKey);
  writeNotNull('nightmare', instance.nightmare);
  writeNotNull('archwingRequired', instance.archwingRequired);
  writeNotNull('isSharkwing', instance.isSharkwing);
  writeNotNull('enemySpec', instance.enemySpec);
  writeNotNull('levelOverride', instance.levelOverride);
  writeNotNull('advancedSpawners', instance.advancedSpawners);
  writeNotNull('requiredItems', instance.requiredItems);
  writeNotNull('consumeRequiredItems', instance.consumeRequiredItems);
  writeNotNull('leadersAlwwaysAllowed', instance.leadersAlwwaysAllowed);
  writeNotNull('levelAuras', instance.levelAuras);
  writeNotNull('description', instance.description);
  writeNotNull('exclusiveWeapon', instance.exclusiveWeapon);
  return val;
}
