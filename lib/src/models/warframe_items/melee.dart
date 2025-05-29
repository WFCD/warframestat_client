import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'melee.g.dart';

/// {@template melee}
/// Represents a Melee weapon
/// {@endtemplate}
@JsonSerializable()
class Melee extends Weapon {
  /// {@macro melee}
  const Melee({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    required super.excludeFromCodex,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.damagePerShot,
    required super.disposition,
    required super.fireRate,
    required super.omegaAttenuation,
    required super.polarities,
    required super.procChance,
    required super.slot,
    required super.totalDamage,
    required super.maxLevelCap,
    required this.followThrough,
    required this.heavyAttackDamage,
    required this.heavySlamAttack,
    required this.heavySlamRadialDamage,
    required this.heavySlamRadius,
    required this.slamAttack,
    required this.slamRadialDamage,
    required this.slamRadius,
    required this.slideAttack,
    required this.windUp,
    required this.range,
    required List<MeleeAttack>? super.attacks,
    required super.damage,
    required this.stancePolarity,
    required super.patchlogs,
    required super.releaseDate,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.tags,
  });

  /// Creates a Melee from Json map
  factory Melee.fromJson(Map<String, dynamic> data) => _$MeleeFromJson(data);

  /// Follow through.
  final double? followThrough;

  /// Stance polarity.
  final String? stancePolarity;

  /// Heavy attack damage.
  final int? heavyAttackDamage;

  /// Heavy slam attack damage.
  final int? heavySlamAttack;

  /// Radial damage for heavy attacks.
  final int? heavySlamRadialDamage;

  /// Heavy slam attack radius.
  final int? heavySlamRadius;

  /// Slam attack damage.
  final int? slamAttack;

  /// Slam attack radial damage.
  final int? slamRadialDamage;

  /// Slam attack radius.
  final int? slamRadius;

  /// slide attack damage.
  final int? slideAttack;

  /// Wind up time.
  final double? windUp;

  /// Melee range.
  final double? range;

  @override
  Map<String, dynamic> toJson() => _$MeleeToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      followThrough,
      stancePolarity,
      heavyAttackDamage,
      heavySlamAttack,
      heavySlamRadialDamage,
      heavySlamRadius,
      slamAttack,
      slamRadialDamage,
      slamRadius,
      slideAttack,
      windUp,
      range,
    ]);
}

/// {@template melee_buildable}
/// Represents a Melee weapon
///
/// Prisma weapon aren't buildable
/// {@endtemplate}
@JsonSerializable()
class MeleeBuildable extends BuildableItem implements Melee {
  /// {@macro melee_buildable}
  const MeleeBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.bpCost,
    required super.components,
    required super.imageName,
    required this.attacks,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.damage,
    required this.damagePerShot,
    required this.fireRate,
    required super.isPrime,
    required this.omegaAttenuation,
    required this.procChance,
    required this.slot,
    required this.totalDamage,
    required this.maxLevelCap,
    required this.followThrough,
    required this.heavyAttackDamage,
    required this.heavySlamAttack,
    required this.heavySlamRadialDamage,
    required this.heavySlamRadius,
    required this.slamAttack,
    required this.slamRadialDamage,
    required this.slamRadius,
    required this.slideAttack,
    required this.windUp,
    required this.range,
    required super.marketCost,
    required super.itemCount,
    required super.patchlogs,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.masteryReq,
    required this.stancePolarity,
    required this.tags,
    required this.polarities,
    required super.vaulted,
    required this.disposition,
    required super.releaseDate,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Melee from Json map
  factory MeleeBuildable.fromJson(Map<String, dynamic> data) => _$MeleeBuildableFromJson(data);

  @override
  final List<MeleeAttack>? attacks;

  @override
  final num criticalChance;

  @override
  final num criticalMultiplier;

  @override
  final Damage? damage;

  @override
  final List<num> damagePerShot;

  @override
  final int? disposition;

  @override
  final num fireRate;

  @override
  final double omegaAttenuation;

  @override
  final List<String>? polarities;

  @override
  final double procChance;

  @override
  final int? slot;

  @override
  final List<String>? tags;

  @override
  final num totalDamage;

  @override
  @JsonKey(defaultValue: 30)
  final int maxLevelCap;

  /// Follow through.
  @override
  final double? followThrough;

  /// Stance polarity.
  @override
  final String? stancePolarity;

  /// Heavy attack damage.
  @override
  final int? heavyAttackDamage;

  /// Heavy slam attack damage.
  @override
  final int? heavySlamAttack;

  /// Radial damage for heavy attacks.
  @override
  final int? heavySlamRadialDamage;

  /// Heavy slam attack radius.
  @override
  final int? heavySlamRadius;

  /// Slam attack damage.
  @override
  final int? slamAttack;

  /// Slam attack radial damage.
  @override
  final int? slamRadialDamage;

  /// Slam attack radius.
  @override
  final int? slamRadius;

  /// slide attack damage.
  @override
  final int? slideAttack;

  /// Wind up time.
  @override
  final double? windUp;

  /// Melee range.
  @override
  final double? range;

  /// Creates a Json map from a Melee
  @override
  Map<String, dynamic> toJson() => _$MeleeBuildableToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      followThrough,
      stancePolarity,
      heavyAttackDamage,
      heavySlamAttack,
      heavySlamRadialDamage,
      heavySlamRadius,
      slamAttack,
      slamRadialDamage,
      slamRadius,
      slideAttack,
      windUp,
      range,
    ]);
}

/// {@template meleeattack}
/// {@endtemplate}
@JsonSerializable()
class MeleeAttack extends Attack {
  /// {@macro meleeattack}
  const MeleeAttack({
    required super.name,
    required super.speed,
    required super.critChance,
    required super.critMult,
    required super.statusChance,
    required super.damage,
    required this.slide,
    required this.slam,
  });

  /// Creates a MeleeAttack from Json map
  factory MeleeAttack.fromJson(Map<String, dynamic> data) => _$MeleeAttackFromJson(data);

  /// Slide damage.
  final String? slide;

  /// Slam damage.
  final Slam? slam;

  @override
  Map<String, dynamic> toJson() => _$MeleeAttackToJson(this);
}

/// {@template slam}
/// Represents a melee slam attack.
/// {@endtemplate}
@JsonSerializable()
class Slam extends Equatable {
  /// {@macro slam}
  const Slam({required this.damage, required this.radial});

  /// Creates a [Slam] from a json map.
  factory Slam.fromJson(Map<String, dynamic> json) => _$SlamFromJson(json);

  /// Total slam damage;
  final String damage;

  /// Slam radial damage.
  final Radial radial;

  /// Creates json map from [Slam].
  Map<String, dynamic> toJson() => _$SlamToJson(this);

  @override
  List<Object?> get props => [damage, radial];
}

/// {@template radial}
/// [Slam] radial damage.
/// {@endtemplate}
@JsonSerializable()
class Radial extends Equatable {
  /// {@macro radial}
  const Radial({required this.damage, required this.radius, this.element});

  /// Creates [Radial] from a json map.
  factory Radial.fromJson(Map<String, dynamic> json) => _$RadialFromJson(json);

  /// Radial damage.
  final String damage;

  /// Element type.
  final String? element;

  /// Radius.
  final num radius;

  /// Creates a json map from [Radial].
  Map<String, dynamic> toJson() => _$RadialToJson(this);

  @override
  List<Object?> get props => [damage, element, radius];
}
