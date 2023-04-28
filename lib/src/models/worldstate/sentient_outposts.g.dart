// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentient_outposts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentientOutpost _$SentientOutpostFromJson(Map json) => $checkedCreate(
      'SentientOutpost',
      json,
      ($checkedConvert) {
        final val = SentientOutpost(
          id: $checkedConvert('id', (v) => v as String),
          activation: $checkedConvert('activation',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiry: $checkedConvert(
              'expiry', (v) => v == null ? null : DateTime.parse(v as String)),
          mission: $checkedConvert(
              'mission',
              (v) => v == null
                  ? null
                  : Mission.fromJson(Map<String, dynamic>.from(v as Map))),
          active: $checkedConvert('active', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$SentientOutpostToJson(SentientOutpost instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  writeNotNull('mission', instance.mission?.toJson());
  val['active'] = instance.active;
  return val;
}
