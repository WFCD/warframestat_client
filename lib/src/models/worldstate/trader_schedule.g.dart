// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderSchedule _$TraderScheduleFromJson(Map json) => $checkedCreate(
      'TraderSchedule',
      json,
      ($checkedConvert) {
        final val = TraderSchedule(
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          item: $checkedConvert('item', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TraderScheduleToJson(TraderSchedule instance) {
  final val = <String, dynamic>{
    'expiry': instance.expiry.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', instance.item);
  return val;
}
