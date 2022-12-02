import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:warframestat_client/src/objects.dart';

part 'arbitration.g.dart';

/// {@template alert}
/// Details of the currently active Arbitration.
/// {@endtemplate}
@JsonSerializable()
@experimental
class Arbitration extends EphemeralState {
  /// {@macro alert}
  const Arbitration({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.node,
    required this.nodeKey,
    required this.enemy,
    required this.type,
    required this.typeKey,
    required this.archwing,
    required this.sharkwing,
    required this.expired,
  });

  /// Creates a Arbitration from Json map
  factory Arbitration.fromJson(Map<String, dynamic> json) =>
      _$ArbitrationFromJson(json);

  /// The node the arbitration is taking place in.
  final String node;

  /// The untranslated node.
  final String nodeKey;

  /// The faction the player will be facing.
  ///
  /// This will be in locale that the worldstate was recived in.
  final String enemy;

  /// Arbitration mission type (localized).
  final String type;

  /// Arbitration mission type.
  final String typeKey;

  /// Arbitration requires an archwing.
  final bool archwing;

  /// Arbitration requires an archwing for swimming.
  final bool sharkwing;

  /// Whether the object is expired at the time of creation.
  final bool expired;

  /// Creates a Json map from a Arbitration.
  Map<String, dynamic> toJson() => _$ArbitrationToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      node,
      nodeKey,
      enemy,
      type,
      typeKey,
      archwing,
      sharkwing,
      expired,
    ]);
}
