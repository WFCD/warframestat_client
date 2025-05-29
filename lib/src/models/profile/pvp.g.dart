// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'pvp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pvp _$PvpFromJson(Map json) => $checkedCreate('Pvp', json, ($checkedConvert) {
  final val = Pvp(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    suitDeaths: $checkedConvert('suitDeaths', (v) => (v as num?)?.toInt()),
    suitKills: $checkedConvert('suitKills', (v) => (v as num?)?.toInt()),
    weaponKills: $checkedConvert('weaponKills', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$PvpToJson(Pvp instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  if (instance.suitDeaths case final value?) 'suitDeaths': value,
  if (instance.suitKills case final value?) 'suitKills': value,
  if (instance.weaponKills case final value?) 'weaponKills': value,
};
