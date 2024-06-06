import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'node.g.dart';

/// {@template node}
/// Node description
/// {@endtemplate}
@JsonSerializable()
class Node implements Item {
  /// {@macro node}
  const Node({
    required this.uniqueName,
    required this.name,
    required this.type,
    required this.category,
    required this.productCategory,
    required this.imageName,
    required this.factionIndex,
    required this.masteryReq,
    required this.maxEnemyLevel,
    required this.minEnemyLevel,
    required this.nodeType,
    required this.systemIndex,
    required this.systemName,
    required this.patchlogs,
  });

  /// Creates a Node from Json map
  factory Node.fromJson(Map<String, dynamic> data) => _$NodeFromJson(data);

  /// Unique name used within the game.
  @override
  final String uniqueName;

  /// Name of the item.
  ///
  /// This name is reflected of the name seen in-game. [uniqueName] on he other
  /// are the names of the item used internally by game files.
  @override
  final String name;

  /// Item type.
  @override
  @ItemTypeConverter()
  final ItemType type;

  /// Item category.
  @override
  final String category;

  /// Item product category.
  @override
  final String? productCategory;

  @override
  final String? imageName;

  @override
  final List<Patchlog>? patchlogs;

  /// ?
  final int factionIndex;

  /// Mastery requirement for this node.
  final int masteryReq;

  /// Max level of enemies.
  final int maxEnemyLevel;

  /// Minimum enemy level.
  final int minEnemyLevel;

  /// Node type.
  final int nodeType;

  /// System index.
  final int systemIndex;

  /// System Name.
  final String systemName;

  /// Creates a Json map from a Node
  @override
  Map<String, dynamic> toJson() => _$NodeToJson(this);

  @override
  List<Object?> get props => [
        factionIndex,
        masteryReq,
        maxEnemyLevel,
        minEnemyLevel,
        nodeType,
        systemIndex,
        systemName,
      ];

  /// Not implemented for [Node]
  @override
  String? get description => null;

  /// Not implemented for [Node]
  @override
  bool? get excludeFromCodex => null;

  /// Not implemented for [Node]
  @override
  String? get releaseDate => null;

  /// Not implemented for [Node]
  @override
  String? get wikiaThumbnail => null;

  /// Not implemented for [Node]
  @override
  String? get wikiaUrl => null;

  @override
  bool get tradable => false;

  @override
  bool? get stringify => false;
}
