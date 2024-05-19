import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'xp_item.g.dart';

Item? _toItem(Map<String, dynamic>? json) => json != null ? toItem(json) : null;

/// {@template xp_item}
/// An item the player has earned XP in
/// {@endtemplate}
@JsonSerializable()
class XpItem extends Equatable {
  /// {@macro xp_item}
  const XpItem({
    required this.uniqueName,
    required this.xp,
    required this.item,
  });

  /// Creates an instance from json map
  factory XpItem.fromJson(Map<String, dynamic> json) {
    return _$XpItemFromJson(json);
  }

  /// Item unique name
  final String uniqueName;

  /// XP earned
  final int xp;

  /// The item itself if found in warframe-items
  @JsonKey(fromJson: _toItem)
  final Item? item;

  /// Creates a json map from [XpItem]
  Map<String, dynamic> toJson() => _$XpItemToJson(this);

  @override
  List<Object?> get props => [uniqueName, xp, item];
}
