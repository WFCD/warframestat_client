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
    required super.type,
    required super.category,
    required super.tradable,
    required List<Drop> super.drops,
    required this.itemCount,
  });

  /// Total require [Item] for the blueprint reciepe.
  final int itemCount;

  @override
  List<Object?> get props => super.props..add(itemCount);
}
