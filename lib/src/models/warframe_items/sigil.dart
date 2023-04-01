import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'sigil.g.dart';

/// {@template sigil}
/// Sigil description
/// {@endtemplate}
@JsonSerializable()
class Sigil extends DroppableItem {
  /// {@macro sigil}
  const Sigil({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    super.imageName,
    super.patchlogs,
    super.drops,
  });

  /// Creates a Sigil from Json map
  factory Sigil.fromJson(Map<String, dynamic> data) => _$SigilFromJson(data);

  /// Creates a Json map from a Sigil
  @override
  Map<String, dynamic> toJson() => _$SigilToJson(this);
}
