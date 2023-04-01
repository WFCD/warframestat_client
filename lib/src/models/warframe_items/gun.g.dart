// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gun.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GunAttack _$GunAttackFromJson(Map json) => $checkedCreate(
      'GunAttack',
      json,
      ($checkedConvert) {
        final val = GunAttack(
          name: $checkedConvert('name', (v) => v as String),
          critChance: $checkedConvert('crit_chance', (v) => v as num),
          critMult: $checkedConvert('crit_mult', (v) => v as num),
          statusChance: $checkedConvert('status_chance', (v) => v as num),
          damage: $checkedConvert('damage',
              (v) => Damage.fromJson(Map<String, dynamic>.from(v as Map))),
          shotType: $checkedConvert('shot_type', (v) => v as String?),
          shotSpeed: $checkedConvert('shot_speed', (v) => v as num?),
          flight: $checkedConvert('flight', (v) => v as num?),
          speed: $checkedConvert('speed', (v) => v as num? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'critChance': 'crit_chance',
        'critMult': 'crit_mult',
        'statusChance': 'status_chance',
        'shotType': 'shot_type',
        'shotSpeed': 'shot_speed'
      },
    );

Map<String, dynamic> _$GunAttackToJson(GunAttack instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'speed': instance.speed,
    'crit_chance': instance.critChance,
    'crit_mult': instance.critMult,
    'status_chance': instance.statusChance,
    'damage': instance.damage.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shot_type', instance.shotType);
  writeNotNull('shot_speed', instance.shotSpeed);
  writeNotNull('flight', instance.flight);
  return val;
}
