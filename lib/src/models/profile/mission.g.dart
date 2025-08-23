// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


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
      'missionType': ?instance.missionType,
      'faction': ?instance.faction,
      'highScore': ?instance.highScore,
      'completes': ?instance.completes,
      'tier': ?instance.tier,
    };
