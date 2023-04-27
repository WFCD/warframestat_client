// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetLocation _$TargetLocationFromJson(Map json) => $checkedCreate(
      'TargetLocation',
      json,
      ($checkedConvert) {
        final val = TargetLocation(
          lastVerified: $checkedConvert('last_verified', (v) => v as String),
          level: $checkedConvert('level', (v) => v as String),
          faction: $checkedConvert('faction', (v) => v as String),
          spawnRate: $checkedConvert('spawn_rate', (v) => v as String),
          mission: $checkedConvert('mission', (v) => v as String),
          planet: $checkedConvert('planet', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'lastVerified': 'last_verified',
        'spawnRate': 'spawn_rate'
      },
    );

Map<String, dynamic> _$TargetLocationToJson(TargetLocation instance) =>
    <String, dynamic>{
      'last_verified': instance.lastVerified,
      'level': instance.level,
      'faction': instance.faction,
      'spawn_rate': instance.spawnRate,
      'mission': instance.mission,
      'planet': instance.planet,
      'type': instance.type,
    };
