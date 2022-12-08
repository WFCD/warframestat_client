// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vallis_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VallisCycle _$VallisCycleFromJson(Map json) => $checkedCreate(
      'VallisCycle',
      json,
      ($checkedConvert) {
        final val = VallisCycle(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isWarm: $checkedConvert('isWarm', (v) => v as bool),
          state: $checkedConvert('state', (v) => v as String),
          timeLeft: $checkedConvert('timeLeft', (v) => v as String),
          shortString: $checkedConvert('shortString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$VallisCycleToJson(VallisCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'timeLeft': instance.timeLeft,
      'shortString': instance.shortString,
      'isWarm': instance.isWarm,
    };
