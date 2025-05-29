// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'construction_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructionProgress _$ConstructionProgressFromJson(
  Map json,
) => $checkedCreate('ConstructionProgress', json, ($checkedConvert) {
  final val = ConstructionProgress(
    id: $checkedConvert('id', (v) => v as String?),
    fomorianProgress: $checkedConvert('fomorianProgress', (v) => v as String),
    razorbackProgress: $checkedConvert('razorbackProgress', (v) => v as String),
    unknownProgress: $checkedConvert('unknownProgress', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ConstructionProgressToJson(
  ConstructionProgress instance,
) => <String, dynamic>{
  'id': instance.id,
  'fomorianProgress': instance.fomorianProgress,
  'razorbackProgress': instance.razorbackProgress,
  'unknownProgress': instance.unknownProgress,
};
