// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'intrinsics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Intrinsics _$IntrinsicsFromJson(Map json) =>
    $checkedCreate('Intrinsics', json, ($checkedConvert) {
      final val = Intrinsics(
        railjack: $checkedConvert('railjack', (v) => (v as num).toInt()),
        engineering: $checkedConvert('engineering', (v) => (v as num).toInt()),
        gunnery: $checkedConvert('gunnery', (v) => (v as num).toInt()),
        piloting: $checkedConvert('piloting', (v) => (v as num).toInt()),
        tactical: $checkedConvert('tactical', (v) => (v as num).toInt()),
        command: $checkedConvert('command', (v) => (v as num).toInt()),
        drifter: $checkedConvert('drifter', (v) => (v as num).toInt()),
        riding: $checkedConvert('riding', (v) => (v as num).toInt()),
        combat: $checkedConvert('combat', (v) => (v as num).toInt()),
        opportunity: $checkedConvert('opportunity', (v) => (v as num).toInt()),
        endurance: $checkedConvert('endurance', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$IntrinsicsToJson(Intrinsics instance) =>
    <String, dynamic>{
      'railjack': instance.railjack,
      'engineering': instance.engineering,
      'gunnery': instance.gunnery,
      'piloting': instance.piloting,
      'tactical': instance.tactical,
      'command': instance.command,
      'drifter': instance.drifter,
      'riding': instance.riding,
      'combat': instance.combat,
      'opportunity': instance.opportunity,
      'endurance': instance.endurance,
    };
