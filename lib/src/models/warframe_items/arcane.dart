import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'arcane.g.dart';

/// {@template arcane}
/// Data class for Arcanes.
/// {@endtemplate}
@JsonSerializable()
class Arcane extends DroppableItem {
  /// {@macro arcane}
  const Arcane({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    super.drops,
    super.patchlogs,
    this.levelStats,
  });

  /// Creates an [Arcane] from a json map.
  factory Arcane.fromJson(Map<String, dynamic> json) => _$ArcaneFromJson(json);

  /// Rank information on an [Arcane]'s levels.
  final List<LevelStat>? levelStats;

  /// Creates a json map from [Arcane].
  Map<String, dynamic> toJson() => _$ArcaneToJson(this);
}
