import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'necromech.g.dart';

/// {@template necromech}
/// A Necromech power suit.
/// {@endtemplate}
@JsonSerializable()
class NecroMech extends PowerSuit {
  /// {@macro necromech}
  const NecroMech({
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
    required super.imageName,
    required super.shield,
    required super.armor,
    required super.health,
    required super.stamina,
    required super.isPrime,
    required super.power,
    required super.abilities,
    required super.polarities,
    required super.releaseDate,
    required super.components,
    required super.masterReq,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Necromech from Json map
  factory NecroMech.fromJson(Map<String, dynamic> data) {
    return _$NecroMechFromJson(data);
  }

  /// Creates a Json map from a Necromech.
  Map<String, dynamic> toJson() => _$NecroMechToJson(this);
}
