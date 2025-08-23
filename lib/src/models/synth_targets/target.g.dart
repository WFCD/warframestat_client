// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTarget _$SynthTargetFromJson(Map json) => $checkedCreate(
  'SynthTarget',
  json,
  ($checkedConvert) {
    final val = SynthTarget(
      name: $checkedConvert('name', (v) => v as String),
      imageKey: $checkedConvert('imageKey', (v) => v as String?),
      locations: $checkedConvert(
        'locations',
        (v) => (v as List<dynamic>)
            .map(
              (e) =>
                  TargetLocation.fromJson(Map<String, dynamic>.from(e as Map)),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$SynthTargetToJson(SynthTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageKey': ?instance.imageKey,
      'locations': instance.locations.map((e) => e.toJson()).toList(),
    };
