// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileMission _$ProfileMissionFromJson(Map json) =>
    $checkedCreate('ProfileMission', json, ($checkedConvert) {
      final val = ProfileMission(
        node: $checkedConvert('node', (v) => v as String),
        nodeKey: $checkedConvert('nodeKey', (v) => v as String),
        missionType: $checkedConvert('missionType', (v) => v as String?),
        faction: $checkedConvert('faction', (v) => v as String?),
        highScore: $checkedConvert('highScore', (v) => (v as num?)?.toInt()),
        completes: $checkedConvert('completes', (v) => (v as num?)?.toInt()),
        tier: $checkedConvert('tier', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ProfileMissionToJson(ProfileMission instance) =>
    <String, dynamic>{
      'node': instance.node,
      'nodeKey': instance.nodeKey,
      if (instance.missionType case final value?) 'missionType': value,
      if (instance.faction case final value?) 'faction': value,
      if (instance.highScore case final value?) 'highScore': value,
      if (instance.completes case final value?) 'completes': value,
      if (instance.tier case final value?) 'tier': value,
    };
