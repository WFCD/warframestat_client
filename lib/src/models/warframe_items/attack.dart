import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template attack}
/// A [Weapon] attack.
/// {@endtemplate}
abstract class Attack extends Equatable {
  /// {@macro attack}
  const Attack({
    required this.name,
    required this.speed,
    required this.critChance,
    required this.critMult,
    required this.statusChance,
    required this.damage,
  });

  /// Attack name.
  final String name;

  /// Attack speed.
  final num speed;

  /// Crit chance.
  @JsonKey(name: 'crit_chance')
  final num critChance;

  /// Crit multiplier.
  @JsonKey(name: 'crit_mult')
  final num critMult;

  /// Status chance.
  @JsonKey(name: 'status_chance')
  final num statusChance;

  /// Shot [Damage] information.
  final Damage damage;

  /// Creeates a json from an [Attack].
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props {
    return [name, speed, critChance, critMult, statusChance, damage];
  }
}
