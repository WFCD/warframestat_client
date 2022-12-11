import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'archwing.g.dart';

/// {@templatte archwing}
/// An archwing.
/// {@endtemplate}
@JsonSerializable()
class Archwing extends PowerSuit {
  /// {@macro archwing}
  const Archwing({
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
    required super.polarities,
    required super.abilities,
    required super.releaseDate,
    required super.components,
    required super.masterReq,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Warframe from Json map
  factory Archwing.fromJson(Map<String, dynamic> data) {
    return _$ArchwingFromJson(data);
  }

  /// Creates a Json map from a Warframe
  Map<String, dynamic> toJson() => _$ArchwingToJson(this);
}
