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
    required super.tradable,
    super.buildPrice = 0,
    super.buildQuantity = 1,
    super.buildTime = 0,
    super.skipBuildTimePrice = 0,
    super.consumeOnBuild = true,
    required super.imageName,
    required super.shield,
    required super.armor,
    required super.health,
    required super.stamina,
    required super.isPrime,
    super.vaulted,
    required super.power,
    required super.polarities,
    required super.releaseDate,
    super.components,
    required super.masterReq,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.abilities,
    required this.aura,
    required this.sex,
    required this.sprintSpeed,
    required this.passiveDescription,
  });

  /// Creates a Warframe from Json map
  factory Warframe.fromJson(Map<String, dynamic> data) =>
      _$WarframeFromJson(data);

  /// Aura slot polarity
  final String? aura;

  /// Warframe sex.
  final String sex;

  /// Sprint speed.
  final num sprintSpeed;

  /// Warframe passive ability.
  final String? passiveDescription;

  /// Creates a Json map from a Warframe
  @override
  Map<String, dynamic> toJson() => _$WarframeToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      abilities,
      aura,
      sex,
      sprintSpeed,
      passiveDescription,
    ]);
}
