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
    required super.isPrime,
    super.vaulted,
    super.releaseDate,
    super.wikiaThumbnail,
    super.wikiaUrl,
    required this.accuracy,
    this.attacks,
    required this.criticalChance,
    required this.criticalMultiplier,
    this.damage,
    required this.damagePerShot,
    required this.disposition,
    required this.fireRate,
    required this.magazineSize,
    required this.multishot,
    required this.noise,
    required this.omegaAttenuation,
    required this.polarities,
    required this.procChance,
    required this.reloadTime,
    required this.slot,
    required this.trigger,
    this.tags,
    required this.totalDamage,
  });

  /// [Weapon] accuracy.
  final num accuracy;

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

  /// Magazine size.
  final int magazineSize;

  /// Chances of an extra free shot.
  final int multishot;

  /// [Weapon] noise type.
  final String noise;

  /// (?)
  final double omegaAttenuation;

  /// Preinstalled polarities.
  final List<String>? polarities;

  /// Status chance.
  final double procChance;

  /// Amount of seconds it takes to reload [Weapon].
  final num reloadTime;

  /// Slot.
  final int slot;

  /// Tags.
  final List<String>? tags;

  /// Total damage the [Weapon] has.
  final num totalDamage;

  /// [Weapon] trigger type.
  final String trigger;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        accuracy,
        attacks,
        criticalChance,
        criticalMultiplier,
        damage,
        damagePerShot,
        disposition,
        fireRate,
        magazineSize,
        multishot,
        noise,
        omegaAttenuation,
        polarities,
        procChance,
        reloadTime,
        slot,
        trigger,
        tags,
        totalDamage,
      ]);
  }
}
