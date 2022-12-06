import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'enemy.g.dart';

/// {@template enemy}
/// Enemy data class.
/// {@endtemplate}
@JsonSerializable()
class Enemy extends DroppableItem {
  /// {@macro enemy}
  const Enemy({
    required super.uniqueName,
    required super.name,
    required super.description,
    required this.health,
    required this.shield,
    required this.armor,
    required this.regionBits,
    required super.type,
    required super.category,
    required super.tradable,
    required List<Drop> super.drops,
    required this.resistances,
  });

  /// Enemy health.
  final int health;

  /// Enemy shield health.
  final int shield;

  /// Enemy armor health.
  final int armor;

  /// ?
  final int regionBits;

  /// Enemy element resistance.
  final List<Resistance> resistances;

  @override
  List<Object?> get props =>
      super.props..addAll([health, shield, armor, regionBits]);
}

/// {@template resistance}
/// Elements enemy is resistant to.
/// {@endtemplate}
@JsonSerializable()
class Resistance extends Equatable {
  /// {@macro resistance}
  const Resistance({
    required this.amount,
    required this.shield,
    required this.affectors,
  });

  /// Amount of resistance(?).
  final num amount;

  /// Resistance type.
  final String shield;

  /// Affected by.
  final List<Affector> affectors;

  @override
  List<Object?> get props => [amount, shield, affectors];
}

/// {@template affector}
/// Affector types.
/// {@endtemplate}
@JsonSerializable()
class Affector extends Equatable {
  /// {@macro affector}
  const Affector({required this.element, required this.modifier});

  /// Affector element type.
  final String element;

  /// Affector modifier.
  final num modifier;

  @override
  List<Object?> get props => [element, modifier];
}
