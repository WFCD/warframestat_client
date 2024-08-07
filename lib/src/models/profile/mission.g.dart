// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileMission _$ProfileMissionFromJson(Map json) => $checkedCreate(
      'ProfileMission',
      json,
      ($checkedConvert) {
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
      },
    );

Map<String, dynamic> _$ProfileMissionToJson(ProfileMission instance) {
  final val = <String, dynamic>{
    'node': instance.node,
    'nodeKey': instance.nodeKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('missionType', instance.missionType);
  writeNotNull('faction', instance.faction);
  writeNotNull('highScore', instance.highScore);
  writeNotNull('completes', instance.completes);
  writeNotNull('tier', instance.tier);
  return val;
}
