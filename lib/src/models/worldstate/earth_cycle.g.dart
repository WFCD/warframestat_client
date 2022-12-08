// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earth_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EarthCycle _$EarthCycleFromJson(Map json) => $checkedCreate(
      'EarthCycle',
      json,
      ($checkedConvert) {
        final val = EarthCycle(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isDay: $checkedConvert('isDay', (v) => v as bool),
          state: $checkedConvert('state', (v) => v as String),
          timeLeft: $checkedConvert('timeLeft', (v) => v as String),
          shortString: $checkedConvert('shortString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$EarthCycleToJson(EarthCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'timeLeft': instance.timeLeft,
      'shortString': instance.shortString,
      'isDay': instance.isDay,
    };
