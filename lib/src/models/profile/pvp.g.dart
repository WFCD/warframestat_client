// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pvp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pvp _$PvpFromJson(Map json) => $checkedCreate(
      'Pvp',
      json,
      ($checkedConvert) {
        final val = Pvp(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          suitDeaths:
              $checkedConvert('suitDeaths', (v) => (v as num?)?.toInt()),
          suitKills: $checkedConvert('suitKills', (v) => (v as num?)?.toInt()),
          weaponKills:
              $checkedConvert('weaponKills', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PvpToJson(Pvp instance) {
  final val = <String, dynamic>{
    'uniqueName': instance.uniqueName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('suitDeaths', instance.suitDeaths);
  writeNotNull('suitKills', instance.suitKills);
  writeNotNull('weaponKills', instance.weaponKills);
  return val;
}
