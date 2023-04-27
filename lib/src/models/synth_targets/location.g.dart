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
          lastVerified: $checkedConvert('lastVerified', (v) => v as String?),
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

Map<String, dynamic> _$TargetLocationToJson(TargetLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lastVerified', instance.lastVerified);
  val['level'] = instance.level;
  val['faction'] = instance.faction;
  val['spawnRate'] = instance.spawnRate;
  val['mission'] = instance.mission;
  val['planet'] = instance.planet;
  val['type'] = instance.type;
  return val;
}
