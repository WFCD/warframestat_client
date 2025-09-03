// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alert _$AlertFromJson(Map json) =>
    $checkedCreate('Alert', json, ($checkedConvert) {
      final val = Alert(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        mission: $checkedConvert(
          'mission',
          (v) => Mission.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
        tag: $checkedConvert('tag', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AlertToJson(Alert instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'mission': instance.mission.toJson(),
  'tag': ?instance.tag,
};
