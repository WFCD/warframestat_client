// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zariman_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZarimanCycle _$ZarimanCycleFromJson(Map json) => $checkedCreate(
      'ZarimanCycle',
      json,
      ($checkedConvert) {
        final val = ZarimanCycle(
          id: $checkedConvert('id', (v) => v as String),
          bountiesEndDate: $checkedConvert(
              'bountiesEndDate', (v) => DateTime.parse(v as String)),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isCorpus: $checkedConvert('isCorpus', (v) => v as bool),
          state: $checkedConvert('state', (v) => v as String),
          timeLeft: $checkedConvert('timeLeft', (v) => v as String),
          shortString: $checkedConvert('shortString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ZarimanCycleToJson(ZarimanCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation?.toIso8601String(),
      'expiry': instance.expiry?.toIso8601String(),
      'state': instance.state,
      'timeLeft': instance.timeLeft,
      'shortString': instance.shortString,
      'bountiesEndDate': instance.bountiesEndDate.toIso8601String(),
      'isCorpus': instance.isCorpus,
    };
