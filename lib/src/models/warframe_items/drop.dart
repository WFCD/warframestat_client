import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'drop.g.dart';

/// {@template drop}
/// Drop information on given [Item].
///
/// Not all [Item]s have drops.
/// {@endtemplate}
@JsonSerializable()
class Drop extends Equatable {
  /// {@macro drop}
  const Drop({required this.location, required this.type, this.uniqueName, this.rarity, this.chance, this.rotation});

  /// Creates a [Drop] from a json map.
  factory Drop.fromJson(Map<String, dynamic> json) {
    return _$DropFromJson(json);
  }

  /// If the drop is a relic a uniqueName will be included
  final String? uniqueName;

  /// Location where the [Item] drops.
  final String location;

  /// The [Item] type.
  final String type;

  /// How rare the [Item] is.
  final Rarity? rarity;

  //// The chances of [Item] dropping.
  final num? chance;

  /// The mission rotation the [Item] drops.
  final String? rotation;

  /// Creates a json map from [Drop].
  Map<String, dynamic> toJson() => _$DropToJson(this);

  @override
  List<Object?> get props => [location, type, uniqueName, rarity, chance, rotation];
}
