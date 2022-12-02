import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:warframestat_client/src/objects.dart';

part 'kuva.g.dart';

/// {@template kuva}
/// Kuva description
/// {@endtemplate}
@experimental
@JsonSerializable()
class Kuva extends EphemeralState {
  /// {@macro kuva}
  const Kuva({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.active,
    required this.node,
    required this.enemy,
    required this.enemyKey,
    required this.type,
    required this.typeKey,
    required this.archwing,
    required this.sharkwing,
  });

  /// Creates a Kuva from Json map
  factory Kuva.fromJson(Map<String, dynamic> json) => _$KuvaFromJson(json);

  /// A description for active
  final bool active;

  /// A description for node
  final String node;

  /// A description for enemy
  final String enemy;

  /// A description for enemyKey
  final String enemyKey;

  /// A description for type
  final String type;

  /// A description for typeKey
  final String typeKey;

  /// A description for archwing
  final bool archwing;

  /// A description for sharkwing
  final bool sharkwing;

  /// Creates a Json map from a Kuva
  Map<String, dynamic> toJson() => _$KuvaToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        active,
        node,
        enemy,
        enemyKey,
        type,
        typeKey,
        archwing,
        sharkwing,
      ]);
  }
}
