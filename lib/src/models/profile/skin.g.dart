// GENERATED CODE - DO NOT MODIFY BY HAND

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
