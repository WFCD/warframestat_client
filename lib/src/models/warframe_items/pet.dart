import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'pet.g.dart';

/// {@template pet}
/// Pet description
/// {@endtemplate}
@JsonSerializable()
class Pet extends Companion {
  /// {@macro pet}
  const Pet({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    required super.patchlogs,
    required this.armor,
    required this.health,
    required this.shield,
    required this.stamina,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Pet from Json map
  factory Pet.fromJson(Map<String, dynamic> data) => _$PetFromJson(data);

  /// Armor health.
  final int armor;

  /// Raw health.
  final int health;

  /// Shield health.
  final int shield;

  /// Stamina.
  final num stamina;

  /// Creates a Json map from a Pet
  @override
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @override
  List<Object?> get props => super.props..addAll([armor, health, shield, stamina]);
}
