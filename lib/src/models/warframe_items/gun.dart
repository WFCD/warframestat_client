import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'gun.g.dart';

/// {@template gun}
/// Gun description
/// {@endtemplate}
abstract class Gun extends Weapon {
  /// {@macro gun}
  const Gun({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    super.bpCost,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.imageName,
    required List<GunAttack> super.attacks,
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
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.releaseDate,
    this.accuracy,
    this.magazineSize,
    this.multiShot,
    this.noise,
    this.trigger,
  });

  /// [Gun] accuracy.
  final num? accuracy;

  /// [Gun] magazine size.
  final int? magazineSize;

  /// Multi shot chance(?)
  final int? multiShot;

  /// How loud the [Gun] is.
  final String? noise;

  /// [Gun] trigger type.
  final String? trigger;

  @override
  List<Object?> get props =>
      super.props..addAll([accuracy, magazineSize, multiShot, noise, trigger]);
}

/// {@template gunattack}
/// Gun specfic attacks.
/// {@endtemplate}
@JsonSerializable()
class GunAttack extends Attack {
  /// {@macro gunattack}
  const GunAttack({
    required super.name,
    super.speed = 0,
    required super.critChance,
    required super.critMult,
    required super.statusChance,
    required super.damage,
    required this.shotType,
    required this.shotSpeed,
    required this.flight,
  });

  /// Create a GunAttack from a json map
  factory GunAttack.fromJson(Map<String, dynamic> json) {
    return _$GunAttackFromJson(json);
  }

  /// The type of shot fired.
  @JsonKey(name: 'shot_type')
  final String? shotType;

  /// How fast the shot travels.
  @JsonKey(name: 'shot_speed')
  final num? shotSpeed;

  /// See [shotSpeed].
  final num? flight;

  @override
  Map<String, dynamic> toJson() => _$GunAttackToJson(this);

  @override
  List<Object?> get props => super.props..addAll([shotType, shotSpeed, flight]);
}
