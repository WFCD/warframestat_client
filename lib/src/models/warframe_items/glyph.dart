import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/warframe_items/item.dart';

part 'glyph.g.dart';

/// {@template glyph}
/// Glyph data.
/// {@endtemplate}
@JsonSerializable()
class Glyph extends Item {
  /// {@macro glyph}
  const Glyph({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
  });

  /// Create an instance of [Glyph] from a json map.
  factory Glyph.fromJson(Map<String, dynamic> json) => _$GlyphFromJson(json);

  /// Creates a json map from an instance of [Glyph].
  @override
  Map<String, dynamic> toJson() => _$GlyphToJson(this);
}
