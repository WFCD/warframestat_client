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
          maxEnemyLevel: $checkedConvert('maxEnemyLevel', (v) => v as int?),
          minEnemyLevel: $checkedConvert('minEnemyLevel', (v) => v as int?),
          maxWaveNum: $checkedConvert('maxWaveNum', (v) => v as int?),
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
              $checkedConvert('exclusiveWeapon', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$MissionToJson(Mission instance) {
  final val = <String, dynamic>{
    'node': instance.node,
    'nodeKey': instance.nodeKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('faction', instance.faction);
  writeNotNull('factionKey', instance.factionKey);
  writeNotNull('reward', instance.reward?.toJson());
  writeNotNull('maxEnemyLevel', instance.maxEnemyLevel);
  writeNotNull('minEnemyLevel', instance.minEnemyLevel);
  writeNotNull('maxWaveNum', instance.maxWaveNum);
  val['type'] = instance.type;
  val['typeKey'] = instance.typeKey;
  val['nightmare'] = instance.nightmare;
  val['archwingRequired'] = instance.archwingRequired;
  val['isSharkwing'] = instance.isSharkwing;
  writeNotNull('enemySpec', instance.enemySpec);
  writeNotNull('levelOverride', instance.levelOverride);
  val['advancedSpawners'] = instance.advancedSpawners;
  val['requiredItems'] = instance.requiredItems;
  writeNotNull('consumeRequiredItems', instance.consumeRequiredItems);
  writeNotNull('leadersAlwwaysAllowed', instance.leadersAlwwaysAllowed);
  val['levelAuras'] = instance.levelAuras;
  writeNotNull('description', instance.description);
  val['exclusiveWeapon'] = instance.exclusiveWeapon;
  return val;
}
