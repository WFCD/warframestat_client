import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'component.g.dart';

/// {@template component}
/// Components needs to build [BuildableItem]s.
/// {@endtemplate}
@JsonSerializable()
class Component extends DroppableItem {
  /// {@macro component}
  const Component({
    required super.uniqueName,
    required super.name,
    required super.description,
    super.type = 'unknown',
    super.category = 'unknown',
    required super.tradable,
    required List<Drop> super.drops,
    required this.itemCount,
  });

  /// Creates [Component] from json map.
  factory Component.fromJson(Map<String, dynamic> json) {
    return _$ComponentFromJson(json);
  }

  /// Total require [Item] for the blueprint reciepe.
  final int itemCount;

  /// Creates a json map from [Component].
  @override
  Map<String, dynamic> toJson() => _$ComponentToJson(this);

  @override
  List<Object?> get props => super.props..add(itemCount);
}
