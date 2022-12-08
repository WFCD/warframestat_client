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
          lastVerified: $checkedConvert('lastVerified', (v) => v as String),
          level: $checkedConvert('level', (v) => v as String),
          faction: $checkedConvert('faction', (v) => v as String),
          spawnRate: $checkedConvert('spawnRate', (v) => v as String),
          mission: $checkedConvert('mission', (v) => v as String),
          planet: $checkedConvert('planet', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TargetLocationToJson(TargetLocation instance) =>
    <String, dynamic>{
      'lastVerified': instance.lastVerified,
      'level': instance.level,
      'faction': instance.faction,
      'spawnRate': instance.spawnRate,
      'mission': instance.mission,
      'planet': instance.planet,
      'type': instance.type,
    };
