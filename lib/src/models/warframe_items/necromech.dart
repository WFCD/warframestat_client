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
    required super.patchlogs,
    required super.imageName,
    required super.masterReq,
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
    required super.shield,
    required super.armor,
    required super.health,
    required super.stamina,
    required super.power,
    required super.polarities,
    required super.abilities,
  });

  /// Creates a Necromech from Json map
  factory NecroMech.fromJson(Map<String, dynamic> data) {
    return _$NecroMechFromJson(data);
  }

  /// Creates a Json map from a Necromech.
  @override
  Map<String, dynamic> toJson() => _$NecroMechToJson(this);
}
