// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'skin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArsenalSkin _$ArsenalSkinFromJson(Map json) => $checkedCreate(
  'ArsenalSkin',
  json,
  ($checkedConvert) {
    final val = ArsenalSkin(
      uniqueName: $checkedConvert('uniqueName', (v) => v as String),
      item: $checkedConvert('item', (v) => _toItem(v as Map<String, dynamic>?)),
    );
    return val;
  },
);

Map<String, dynamic> _$ArsenalSkinToJson(ArsenalSkin instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      if (instance.item?.toJson() case final value?) 'item': value,
    };
