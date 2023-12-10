import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'misc.g.dart';

/// {@template misc}
/// Misc description
/// {@endtemplate}
@JsonSerializable()
class Misc extends Item {
  /// {@macro misc}
  const Misc({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.imageName,
    required super.tradable,
    required super.patchlogs,
  });

  /// Creates a Misc from Json map
  factory Misc.fromJson(Map<String, dynamic> data) => _$MiscFromJson(data);

  /// Creates a Json map from a Misc
  @override
  Map<String, dynamic> toJson() => _$MiscToJson(this);
}
