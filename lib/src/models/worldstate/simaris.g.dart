// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'simaris.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Simaris _$SimarisFromJson(Map json) =>
    $checkedCreate('Simaris', json, ($checkedConvert) {
      final val = Simaris(
        target: $checkedConvert('target', (v) => v as String),
        isTargetActive: $checkedConvert('isTargetActive', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$SimarisToJson(Simaris instance) => <String, dynamic>{
  'target': instance.target,
  'isTargetActive': instance.isTargetActive,
};
