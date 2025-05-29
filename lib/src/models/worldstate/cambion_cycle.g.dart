// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'cambion_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CambionCycle _$CambionCycleFromJson(Map json) =>
    $checkedCreate('CambionCycle', json, ($checkedConvert) {
      final val = CambionCycle(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$CambionStateEnumMap, v),
        ),
        active: $checkedConvert('active', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CambionCycleToJson(CambionCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'state': _$CambionStateEnumMap[instance.state]!,
      'active': instance.active,
    };

const _$CambionStateEnumMap = {
  CambionState.fass: 'fass',
  CambionState.vome: 'vome',
};
