// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cetus_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CetusCycle _$CetusCycleFromJson(Map json) => $checkedCreate(
      'CetusCycle',
      json,
      ($checkedConvert) {
        final val = CetusCycle(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isDay: $checkedConvert('isDay', (v) => v as bool),
          isCetus: $checkedConvert('isCetus', (v) => v as bool),
          state: $checkedConvert('state', (v) => v as String),
          timeLeft: $checkedConvert('timeLeft', (v) => v as String),
          shortString: $checkedConvert('shortString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$CetusCycleToJson(CetusCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'state': instance.state,
      'timeLeft': instance.timeLeft,
      'shortString': instance.shortString,
      'isDay': instance.isDay,
      'isCetus': instance.isCetus,
    };
