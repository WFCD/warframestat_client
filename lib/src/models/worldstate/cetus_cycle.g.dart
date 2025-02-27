// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cetus_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CetusCycle _$CetusCycleFromJson(Map json) =>
    $checkedCreate('CetusCycle', json, ($checkedConvert) {
      final val = CetusCycle(
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
        isCetus: $checkedConvert('isCetus', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$CetusCycleToJson(CetusCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'isDay': instance.isDay,
      'state': _$EarthStateEnumMap[instance.state]!,
      'isCetus': instance.isCetus,
    };

const _$EarthStateEnumMap = {EarthState.day: 'day', EarthState.night: 'night'};
