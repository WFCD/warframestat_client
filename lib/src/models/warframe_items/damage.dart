import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'damage.g.dart';

/// {@template damage}
/// Damage information on [Weapon]
/// {@endtemplate}
@JsonSerializable()
class Damage extends Equatable {
  /// {@macro damage}
  const Damage({
    required this.total,
    required this.impact,
    required this.puncture,
    required this.slash,
    required this.heat,
    required this.cold,
    required this.electricity,
    required this.toxin,
    required this.blast,
    required this.radiation,
    required this.gas,
    required this.magnetic,
    required this.viral,
    required this.corrosive,
    required this.voidDamage,
    required this.tau,
    required this.cinematic,
    required this.shieldDrain,
    required this.healthDrain,
    required this.energyDrain,
    required this.trueDamage,
  });

  /// Creates [Damage] from json map.
  factory Damage.fromJson(Map<String, dynamic> json) {
    return _$DamageFromJson(json);
  }

  /// Totla damage.
  @JsonKey(defaultValue: 0)
  final num total;

  /// Impact damage.
  @JsonKey(defaultValue: 0)
  final num impact;

  /// Puncture damage.
  @JsonKey(defaultValue: 0)
  final num puncture;

  /// Slash damage.
  @JsonKey(defaultValue: 0)
  final num slash;

  /// Heat damage
  @JsonKey(defaultValue: 0)
  final num heat;

  /// Cold damage.
  @JsonKey(defaultValue: 0)
  final num cold;

  /// Electric damage.
  @JsonKey(defaultValue: 0)
  final num electricity;

  /// Toxin damage.
  @JsonKey(defaultValue: 0)
  final num toxin;

  /// Blast damage.
  @JsonKey(defaultValue: 0)
  final num blast;

  /// Radiation damage.
  @JsonKey(defaultValue: 0)
  final num radiation;

  /// Gas damage.
  @JsonKey(defaultValue: 0)
  final num gas;

  /// Magnetic damage.
  @JsonKey(defaultValue: 0)
  final num magnetic;

  /// Viral damage.
  @JsonKey(defaultValue: 0)
  final num viral;

  /// Corrosive damage.
  @JsonKey(defaultValue: 0)
  final num corrosive;

  /// Void damage.
  @JsonKey(name: 'void', defaultValue: 0)
  final num voidDamage;

  /// Tau damage
  @JsonKey(defaultValue: 0)
  final num tau;

  /// Movie magic damage(?)
  @JsonKey(defaultValue: 0)
  final num cinematic;

  /// Shield drain.
  @JsonKey(defaultValue: 0)
  final num shieldDrain;

  /// Health drain.
  @JsonKey(defaultValue: 0)
  final num healthDrain;

  /// Energy drain.
  @JsonKey(defaultValue: 0)
  final num energyDrain;

  /// Raw damage.
  @JsonKey(name: 'true', defaultValue: 0)
  final num trueDamage;

  /// Creates json map from [Damage].
  Map<String, dynamic> toJson() => _$DamageToJson(this);

  @override
  List<Object?> get props {
    return [
      total,
      impact,
      puncture,
      slash,
      heat,
      cold,
      electricity,
      toxin,
      blast,
      radiation,
      gas,
      magnetic,
      viral,
      corrosive,
      voidDamage,
      tau,
      cinematic,
      shieldDrain,
      healthDrain,
      energyDrain,
      trueDamage,
    ];
  }
}
