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
    required super.tradable,
    required super.drops,
    required this.itemCount,
    super.imageName,
  }) : super(patchlogs: const <Patchlog>[], type: ItemType.misc, category: '', productCategory: '');

  /// Creates [Component] from json map.
  factory Component.fromJson(Map<String, dynamic> json) {
    return _$ComponentFromJson(json);
  }

  /// Total require [ItemCommon] for the blueprint reciepe.
  final int itemCount;

  /// Creates a json map from [Component].
  @override
  Map<String, dynamic> toJson() => _$ComponentToJson(this);

  @override
  List<Object?> get props => super.props..add(itemCount);
}
