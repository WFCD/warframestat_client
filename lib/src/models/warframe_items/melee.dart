import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/warframe_items/warframe_items.dart';

part 'melee.g.dart';

/// {@template melee}
/// Melee description
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
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.releaseDate,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required List<MeleeAttack> super.attacks,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.damage,
    required super.damagePerShot,
    required super.disposition,
    required super.fireRate,
    required super.isPrime,
    required super.omegaAttenuation,
    required super.polarities,
    required super.procChance,
    required super.slot,
    required super.tags,
    required super.totalDamage,
  });

  /// Creates a Melee from Json map
  factory Melee.fromJson(Map<String, dynamic> data) => _$MeleeFromJson(data);

  /// Creates a Json map from a Melee
  Map<String, dynamic> toJson() => _$MeleeToJson(this);
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
  factory MeleeAttack.fromJson(Map<String, dynamic> data) =>
      _$MeleeAttackFromJson(data);

  /// Slide damage.
  final num slide;

  /// Slam damage.
  final Slam slam;

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
  final num damage;

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
  const Radial({
    required this.damage,
    required this.element,
    required this.radius,
  });

  /// Creates [Radial] from a json map.
  factory Radial.fromJson(Map<String, dynamic> json) => _$RadialFromJson(json);

  /// Radial damage.
  final String damage;

  /// Element type.
  final String element;

  /// Radius.
  final num radius;

  /// Creates a json map from [Radial].
  Map<String, dynamic> toJson() => _$RadialToJson(this);

  @override
  List<Object?> get props => [damage, element, radius];
}
