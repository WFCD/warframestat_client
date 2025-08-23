import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template weapon}
/// Base class for all weapons.
/// {@endtemplate}
abstract class Weapon extends ItemCommon {
  /// {@macro weapon}
  const Weapon({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    required super.excludeFromCodex,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.damagePerShot,
    required this.disposition,
    required this.fireRate,
    required this.omegaAttenuation,
    required this.polarities,
    required this.procChance,
    required this.slot,
    required this.totalDamage,
    required this.maxLevelCap,
    required super.patchlogs,
    required super.releaseDate,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required this.attacks,
    required this.damage,
    required this.tags,
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
  final int? disposition;

  /// [Weapon] rate of fite.
  final num fireRate;

  /// (?)
  final double omegaAttenuation;

  /// Preinstalled polarities.
  final List<String>? polarities;

  /// Status chance.
  final double procChance;

  /// Slot.
  final int? slot;

  /// Tags.
  final List<String>? tags;

  /// Total damage the [Weapon] has.
  final num totalDamage;

  /// Max rank this weapon can be leveled
  @JsonKey(defaultValue: 30)
  final int maxLevelCap;

  @override
  List<Object?> get props {
    return super.props..addAll([
      criticalChance,
      criticalMultiplier,
      disposition,
      fireRate,
      omegaAttenuation,
      polarities,
      procChance,
      slot,
      tags,
      totalDamage,
      maxLevelCap,
    ]);
  }
}
