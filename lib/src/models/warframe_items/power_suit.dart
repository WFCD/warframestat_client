import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'power_suit.g.dart';

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
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
    required super.masteryReq,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.isPrime,
    required super.vaulted,
    required this.shield,
    required this.armor,
    required this.health,
    required this.stamina,
    required this.power,
    required this.polarities,
    required this.abilities,
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

  /// Warframe abilities
  final List<Ability> abilities;

  @override
  List<Object?> get props => super.props..addAll([shield, armor, health, stamina, power, abilities, polarities]);
}

/// {@template ability}
/// Data on a [PowerSuit] ability.
/// {@endtemplate}
@JsonSerializable()
class Ability extends Equatable {
  /// {@macro ability}
  const Ability({required this.name, required this.description, required this.imageName});

  /// Creats an [Ability] from a json map.
  factory Ability.fromJson(Map<String, dynamic> json) {
    return _$AbilityFromJson(json);
  }

  /// Ability name.
  final String name;

  /// Ability desccription.
  final String description;

  /// Image name
  final String imageName;

  /// Creates a json map from an [Ability]
  Map<String, dynamic> toJson() => _$AbilityToJson(this);

  @override
  List<Object> get props => [name, description];
}
