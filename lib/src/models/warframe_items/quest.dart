import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'quest.g.dart';

/// {@template quest}
/// Quest description
/// {@endtemplate}
@JsonSerializable()
class Quest extends Item {
  /// {@macro quest}
  const Quest({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required bool super.excludeFromCodex,
    required List<Patchlog> super.patchlogs,
  });

  /// Creates a Quest from Json map
  factory Quest.fromJson(Map<String, dynamic> data) => _$QuestFromJson(data);

  /// Creates a Json map from a Quest
  Map<String, dynamic> toJson() => _$QuestToJson(this);
}
