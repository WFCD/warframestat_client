import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

/// {@template location}
/// Location description
/// {@endtemplate}
@JsonSerializable()
class TargetLocation {
  /// {@macro location}
  const TargetLocation({
    required this.lastVerified,
    required this.level,
    required this.faction,
    required this.spawnRate,
    required this.mission,
    required this.planet,
    required this.type,
  });

  /// Creates a Location from Json map
  factory TargetLocation.fromJson(Map<String, dynamic> data) =>
      _$TargetLocationFromJson(data);

  /// Last time the target was verified.
  final String? lastVerified;

  /// Target level in the given location.
  final String level;

  /// Target faction.
  final String faction;

  /// Spawn rate of target in the givin location.
  final String spawnRate;

  /// Mission node.
  final String mission;

  /// Mission planet
  final String planet;

  /// Mission type.
  final String type;

  /// Creates a Json map from a Location
  Map<String, dynamic> toJson() => _$TargetLocationToJson(this);
}
