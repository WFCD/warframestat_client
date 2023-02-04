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
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          mission: $checkedConvert('mission',
              (v) => Mission.fromJson(Map<String, dynamic>.from(v as Map))),
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
  val['mission'] = instance.mission.toJson();
  val['active'] = instance.active;
  return val;
}
