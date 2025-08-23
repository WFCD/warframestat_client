import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'glyph.g.dart';

/// {@template glyph}
/// Glyph data.
/// {@endtemplate}
@JsonSerializable()
class Glyph extends ItemCommon {
  /// {@macro glyph}
  const Glyph({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Create an instance of [Glyph] from a json map.
  factory Glyph.fromJson(Map<String, dynamic> json) => _$GlyphFromJson(json);

  /// Creates a json map from an instance of [Glyph].
  @override
  Map<String, dynamic> toJson() => _$GlyphToJson(this);
}
