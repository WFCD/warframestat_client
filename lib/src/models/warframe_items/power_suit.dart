import 'package:warframestat_client/warframestat_client.dart';

/// {@template warframe}
/// Represents Powersuits and subtypes.
/// {@endtemplate}
abstract class PowerSuit extends BuildableItem {
  /// {@macro warframe}
  const PowerSuit({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    super.patchlogs,
    required super.imageName,
    super.masterReq,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    super.components,
    super.releaseDate,
    super.marketCost,
    super.bpCost,
    super.itemCount,
    super.wikiaThumbnail,
    super.wikiaUrl,
    required super.isPrime,
    super.vaulted,
    required this.shield,
    required this.armor,
    required this.health,
    required this.stamina,
    required this.power,
    required this.polarities,
    required this.abilities,
  });

  /// Shield health.
  final int shield;

  /// Armor health.
  final int armor;

  /// Raw health.
  final int health;

  /// Stamina.
  final num stamina;

  /// Powersuit energy.
  final int power;

  /// Preinstalled polarities.
  final List<String>? polarities;

  /// Warframe abilities
  final List<dynamic> abilities;

  @override
  List<Object?> get props => super.props
    ..addAll([
      shield,
      armor,
      health,
      stamina,
      power,
      abilities,
      polarities,
    ]);
}
