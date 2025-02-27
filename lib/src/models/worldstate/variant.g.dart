// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variant _$VariantFromJson(Map json) =>
    $checkedCreate('Variant', json, ($checkedConvert) {
      final val = Variant(
        missionType: $checkedConvert('missionType', (v) => v as String),
        modifier: $checkedConvert('modifier', (v) => v as String),
        modifierDescription: $checkedConvert(
          'modifierDescription',
          (v) => v as String,
        ),
        node: $checkedConvert('node', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$VariantToJson(Variant instance) => <String, dynamic>{
  'missionType': instance.missionType,
  'modifier': instance.modifier,
  'modifierDescription': instance.modifierDescription,
  'node': instance.node,
};
