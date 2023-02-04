// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alert _$AlertFromJson(Map json) => $checkedCreate(
      'Alert',
      json,
      ($checkedConvert) {
        final val = Alert(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          startString: $checkedConvert('startString', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          mission: $checkedConvert('mission',
              (v) => Mission.fromJson(Map<String, dynamic>.from(v as Map))),
          rewardTypes: $checkedConvert('rewardTypes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          eta: $checkedConvert('eta', (v) => v as String),
          tag: $checkedConvert('tag', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AlertToJson(Alert instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['startString'] = instance.startString;
  val['active'] = instance.active;
  val['mission'] = instance.mission.toJson();
  val['rewardTypes'] = instance.rewardTypes;
  val['eta'] = instance.eta;
  val['tag'] = instance.tag;
  return val;
}
