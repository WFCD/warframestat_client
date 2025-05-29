// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'sentient_outposts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentientOutpost _$SentientOutpostFromJson(Map json) =>
    $checkedCreate('SentientOutpost', json, ($checkedConvert) {
      final val = SentientOutpost(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        expiry: $checkedConvert(
          'expiry',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        mission: $checkedConvert(
          'mission',
          (v) =>
              v == null
                  ? null
                  : Mission.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
        active: $checkedConvert('active', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$SentientOutpostToJson(SentientOutpost instance) =>
    <String, dynamic>{
      if (instance.activation?.toIso8601String() case final value?)
        'activation': value,
      if (instance.expiry?.toIso8601String() case final value?) 'expiry': value,
      'id': instance.id,
      if (instance.mission?.toJson() case final value?) 'mission': value,
      'active': instance.active,
    };
