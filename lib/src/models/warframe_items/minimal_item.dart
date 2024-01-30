import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'minimal_item.g.dart';

/// {@template minimal_item}
/// Creates a minimal item instance for searches.
/// {@endtemplate}
@JsonSerializable()
class MinimalItem extends Item {
  /// {@macro minimal_item}
  const MinimalItem({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.patchlogs,
    required super.imageName,
    required this.vaultDate,
    required this.vaulted,
  });

  /// Creates an instance of [MinimalItem] from json.
  factory MinimalItem.fromJson(Map<String, dynamic> json) {
    return _$MinimalItemFromJson(json);
  }

  final String? vaultDate;

  final bool? vaulted;

  @override
  Map<String, dynamic> toJson() => _$MinimalItemToJson(this);

  @override
  List<Object?> get props => super.props..add([vaultDate, vaulted]);
}
