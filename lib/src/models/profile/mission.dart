import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mission.g.dart';

/// {@template profile_missions}
/// Nodes/Missions completed
/// {@endtemplate}
@JsonSerializable()
class ProfileMission extends Equatable {
  /// {@macro profile_missions}
  const ProfileMission({
    required this.node,
    required this.nodeKey,
    required this.missionType,
    required this.faction,
    required this.highScore,
    required this.completes,
    required this.tier,
  });

  /// Get [ProfileMission] from json
  factory ProfileMission.fromJson(Map<String, dynamic> json) {
    return _$ProfileMissionFromJson(json);
  }

  /// Node name
  final String node;

  /// Node uniqueName
  final String nodeKey;

  /// Node mission type
  final String? missionType;

  /// Node faction occupenc
  final String? faction;

  /// High score
  final int? highScore;

  /// Number of completions
  final int? completes;

  /// Mission tier
  final int? tier;

  /// Creates a json map from [ProfileMission]
  Map<String, dynamic> toJson() => _$ProfileMissionToJson(this);

  @override
  List<Object?> get props {
    return [node, nodeKey, missionType, faction, highScore, completes, tier];
  }
}
