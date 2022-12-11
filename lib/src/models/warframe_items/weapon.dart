import 'package:warframestat_client/warframestat_client.dart';

/// {@template weapon}
/// Base class for all weapons.
/// {@endtemplate}
abstract class Weapon extends BuildableItem {
  /// {@macro weapon}
  const Weapon({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required super.imageName,
    super.patchlogs,
    super.masterReq,
    super.marketCost,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    super.bpCost,
    required super.consumeOnBuild,
    required super.components,
    super.releaseDate,
    super.wikiaThumbnail,
    super.wikiaUrl,
    this.attacks,
    required this.criticalChance,
    required this.criticalMultiplier,
    this.damage,
    required this.damagePerShot,
    required this.disposition,
    required this.fireRate,
    required this.isPrime,
    required this.omegaAttenuation,
    required this.polarities,
    required this.procChance,
    required this.slot,
    this.tags,
    required this.totalDamage,
  });

  /// [Weapon] secondary attacks.
  final List<Attack>? attacks;

  /// [Weapon] critical chance.
  final num criticalChance;

  /// [Weapon] critical multiplier.
  final num criticalMultiplier;

  /// [Weapon] damage.
  final Damage? damage;

  /// [Weapon] damage per shot.
  final List<num> damagePerShot;

  /// [Weapon]'s riven disposition.
  final int disposition;

  /// [Weapon] rate of fite.
  final num fireRate;

  /// Whether this is a prime [Weapon] or not.
  final bool isPrime;

  /// (?)
  final double omegaAttenuation;

  /// Preinstalled polarities.
  final List<String>? polarities;

  /// Status chance.
  final double procChance;

  /// Slot.
  final int slot;

  /// Tags.
  final List<String>? tags;

  /// Total damage the [Weapon] has.
  final num totalDamage;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        criticalChance,
        criticalMultiplier,
        disposition,
        fireRate,
        isPrime,
        omegaAttenuation,
        polarities,
        procChance,
        slot,
        tags,
        totalDamage,
      ]);
  }
}
