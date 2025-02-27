// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderSchedule _$TraderScheduleFromJson(Map json) =>
    $checkedCreate('TraderSchedule', json, ($checkedConvert) {
      final val = TraderSchedule(
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        item: $checkedConvert('item', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$TraderScheduleToJson(TraderSchedule instance) =>
    <String, dynamic>{
      'expiry': instance.expiry.toIso8601String(),
      if (instance.item case final value?) 'item': value,
    };
