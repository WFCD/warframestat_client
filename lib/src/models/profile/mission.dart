import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mission.g.dart';

@JsonSerializable()
class ProfileMission extends Equatable {
  const ProfileMission({
    required this.node,
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
    return [node, missionType, faction, highScore, completes, tier];
  }
}
