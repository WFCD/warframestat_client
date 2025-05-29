// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'xp_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

XpItem _$XpItemFromJson(Map json) => $checkedCreate('XpItem', json, (
  $checkedConvert,
) {
  final val = XpItem(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    xp: $checkedConvert('xp', (v) => (v as num).toInt()),
    item: $checkedConvert('item', (v) => _toItem(v as Map<String, dynamic>?)),
  );
  return val;
});

Map<String, dynamic> _$XpItemToJson(XpItem instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'xp': instance.xp,
  if (instance.item?.toJson() case final value?) 'item': value,
};
