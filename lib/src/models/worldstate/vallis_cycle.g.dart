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
        );
        return val;
      },
    );

Map<String, dynamic> _$VallisCycleToJson(VallisCycle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['state'] = instance.state;
  val['timeLeft'] = instance.timeLeft;
  val['isWarm'] = instance.isWarm;
  return val;
}
