import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'sentinel.g.dart';

/// {@template sentinal}
/// Sentinal description
/// {@endtemplate}
@JsonSerializable()
class Sentinel extends BuildableItem {
  /// {@macro sentinal}
  const Sentinel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
    required List<Component> super.components,
    required List<Patchlog> super.patchlogs,
    required this.armor,
    required this.health,
    required this.shield,
    required this.stamina,
    required super.isPrime,
    super.vaulted,
  });

  /// Creates a Sentinal from Json map
  factory Sentinel.fromJson(Map<String, dynamic> data) =>
      _$SentinelFromJson(data);

  /// Armor health.
  final int armor;

  /// Raw health.
  final int health;

  /// Shield health.
  final int shield;

  /// Stamina.
  final num stamina;

  /// Creates a Json map from a Sentinal
  @override
  Map<String, dynamic> toJson() => _$SentinelToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([armor, health, shield, stamina, isPrime]);
}
