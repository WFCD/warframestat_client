// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'vallis_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VallisCycle _$VallisCycleFromJson(Map json) =>
    $checkedCreate('VallisCycle', json, ($checkedConvert) {
      final val = VallisCycle(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        isWarm: $checkedConvert('isWarm', (v) => v as bool),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$VallisStateEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VallisCycleToJson(VallisCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'isWarm': instance.isWarm,
      'state': _$VallisStateEnumMap[instance.state]!,
    };

const _$VallisStateEnumMap = {
  VallisState.cold: 'cold',
  VallisState.warm: 'warm',
};
