// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fissure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fissure _$FissureFromJson(Map json) => $checkedCreate(
      'Fissure',
      json,
      ($checkedConvert) {
        final val = Fissure(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          node: $checkedConvert('node', (v) => v as String),
          expired: $checkedConvert('expired', (v) => v as bool),
          missionType: $checkedConvert('missionType', (v) => v as String),
          missionKey: $checkedConvert('missionKey', (v) => v as String),
          tier: $checkedConvert('tier', (v) => v as String),
          tierNum: $checkedConvert('tierNum', (v) => v as int),
          enemy: $checkedConvert('enemy', (v) => v as String),
          enemyKey: $checkedConvert('enemyKey', (v) => v as String),
          isStorm: $checkedConvert('isStorm', (v) => v as bool),
          isHard: $checkedConvert('isHard', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$FissureToJson(Fissure instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['active'] = instance.active;
  val['node'] = instance.node;
  val['expired'] = instance.expired;
  val['missionType'] = instance.missionType;
  val['missionKey'] = instance.missionKey;
  val['tier'] = instance.tier;
  val['tierNum'] = instance.tierNum;
  val['enemy'] = instance.enemy;
  val['enemyKey'] = instance.enemyKey;
  val['isStorm'] = instance.isStorm;
  val['isHard'] = instance.isHard;
  return val;
}
