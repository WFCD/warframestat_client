// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'earth_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarthCycle _$EarthCycleFromJson(Map json) =>
    $checkedCreate('EarthCycle', json, ($checkedConvert) {
      final val = EarthCycle(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        isDay: $checkedConvert('isDay', (v) => v as bool),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$EarthStateEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$EarthCycleToJson(EarthCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'isDay': instance.isDay,
      'state': _$EarthStateEnumMap[instance.state]!,
    };

const _$EarthStateEnumMap = {EarthState.day: 'day', EarthState.night: 'night'};
