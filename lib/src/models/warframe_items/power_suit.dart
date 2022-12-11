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
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
    required this.shield,
    required this.armor,
    required this.health,
    required this.stamina,
    required this.isPrime,
    required this.power,
    required this.polarities,
    required this.abilities,
    super.releaseDate,
    super.components,
    super.masterReq,
    super.wikiaThumbnail,
    super.wikiaUrl,
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

  /// Whether this [PowerSuit] is a prime or not.
  final bool isPrime;

  /// Warframe abilities
  final List<dynamic> abilities;

  @override
  List<Object?> get props => super.props
    ..addAll([
      shield,
      armor,
      health,
      stamina,
      isPrime,
      power,
      abilities,
      polarities,
    ]);
}
