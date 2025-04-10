import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'warframe.g.dart';

/// {@template warframe}
/// Warframe description
/// {@endtemplate}
@JsonSerializable()
class Warframe extends PowerSuit {
  /// {@macro warframe}
  const Warframe({
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
    required this.aura,
    required this.sex,
    required this.sprintSpeed,
    required this.passiveDescription,
    required this.color,
    required this.conclave,
    required this.introduced,
    required super.buildPrice,
    super.buildQuantity = 1,
    super.buildTime = 0,
    super.skipBuildTimePrice = 0,
    super.consumeOnBuild = true,
  });

  /// Creates a Warframe from Json map
  factory Warframe.fromJson(Map<String, dynamic> data) => _$WarframeFromJson(data);

  /// Aura slot polarity
  final String? aura;

  /// Warframe sex.
  final String? sex;

  /// Sprint speed.
  final num sprintSpeed;

  /// Warframe passive ability.
  final String? passiveDescription;

  /// Warframe color.
  // @JsonKey(includeIfNull: true)
  final num? color;

  /// I have no idea what this does.
  final bool? conclave;

  /// Information on when the [Warframe] was introduced.
  final Introduced? introduced;

  /// Creates a Json map from a Warframe
  @override
  Map<String, dynamic> toJson() => _$WarframeToJson(this);

  @override
  List<Object?> get props =>
      super.props
        ..addAll([abilities, aura, sex, sprintSpeed, passiveDescription, color, conclave, introduced, sprintSpeed]);
}
