import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'node.g.dart';

/// {@template node}
/// Node description
/// {@endtemplate}
@JsonSerializable()
class Node extends Item {
  /// {@macro node}
  const Node({
    required super.uniqueName,
    required super.name,
    super.description = '',
    required super.type,
    required super.category,
    required super.tradable,
    required this.factionIndex,
    required this.masteryReq,
    required this.maxEnemyLevel,
    required this.minEnemyLevel,
    required this.nodeType,
    required this.systemIndex,
    required this.systemName,
  });

  /// Creates a Node from Json map
  factory Node.fromJson(Map<String, dynamic> data) => _$NodeFromJson(data);

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
  List<Object?> get props => super.props
    ..addAll([
      factionIndex,
      masteryReq,
      maxEnemyLevel,
      minEnemyLevel,
      nodeType,
      systemIndex,
      systemName
    ]);
}
