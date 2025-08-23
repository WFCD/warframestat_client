// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


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
      'item': ?instance.item,
    };
