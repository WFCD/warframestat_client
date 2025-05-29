// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


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
