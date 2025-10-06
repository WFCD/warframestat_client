import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trader_item.g.dart';

/// {@template void_trader_item}
/// Void trader item data.
/// {@endtemplate}
@JsonSerializable()
class TraderItem extends Equatable {
  /// {@macro void_trader_item}
  const TraderItem({required this.uniqueName, required this.item, required this.ducats, required this.credits});

  /// Creates a VoidTraderItem from Json map
  factory TraderItem.fromJson(Map<String, dynamic> json) => _$TraderItemFromJson(json);

  /// Item uniquename
  final String uniqueName;

  /// Item name
  final String item;

  /// Ducats neeeded to purchase item.
  final int? ducats;

  /// Credits neeeded to purchase item.
  final int? credits;

  /// Creates a Json map from a VoidTraderItem
  Map<String, dynamic> toJson() => _$TraderItemToJson(this);

  @override
  List<Object?> get props => [uniqueName, item, ducats, credits];
}
