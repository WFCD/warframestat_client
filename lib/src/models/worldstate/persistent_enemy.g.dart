// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistent_enemy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersistentEnemy _$PersistentEnemyFromJson(Map json) => $checkedCreate(
      'PersistentEnemy',
      json,
      ($checkedConvert) {
        final val = PersistentEnemy(
          locationTag: $checkedConvert('locationTag', (v) => v as String),
          agentType: $checkedConvert('agentType', (v) => v as String),
          rank: $checkedConvert('rank', (v) => v as int),
          healthPercent: $checkedConvert('healthPercent', (v) => v as int),
          fleeDamage: $checkedConvert('fleeDamage', (v) => v as int),
          region: $checkedConvert('region', (v) => v as String),
          lastDiscoveredTime:
              $checkedConvert('lastDiscoveredTime', (v) => v as String),
          lastDiscoveredAt:
              $checkedConvert('lastDiscoveredAt', (v) => v as String),
          isDiscovered: $checkedConvert('isDiscovered', (v) => v as bool),
          isUsingTicketing:
              $checkedConvert('isUsingTicketing', (v) => v as bool),
          pid: $checkedConvert('pid', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PersistentEnemyToJson(PersistentEnemy instance) =>
    <String, dynamic>{
      'locationTag': instance.locationTag,
      'agentType': instance.agentType,
      'rank': instance.rank,
      'healthPercent': instance.healthPercent,
      'fleeDamage': instance.fleeDamage,
      'region': instance.region,
      'lastDiscoveredTime': instance.lastDiscoveredTime,
      'lastDiscoveredAt': instance.lastDiscoveredAt,
      'isDiscovered': instance.isDiscovered,
      'isUsingTicketing': instance.isUsingTicketing,
      'pid': instance.pid,
    };
