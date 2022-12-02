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

Map<String, dynamic> _$SentientOutpostToJson(SentientOutpost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'mission': instance.mission.toJson(),
      'active': instance.active,
    };
