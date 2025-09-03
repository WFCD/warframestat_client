import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward.g.dart';

/// {@template reward}
/// Contains data about a given reward.
/// {@endtemplate}
@JsonSerializable()
class Reward extends Equatable {
  /// {@macro reward}
  const Reward({
    required this.items,
    required this.countedItems,
    required this.credits,
    required this.thumbnail,
    required this.color,
  });

  /// Creates a [Reward] from json map.
  factory Reward.fromJson(Map<String, dynamic> json) {
    return _$RewardFromJson(json);
  }

  /// Items being awarded.
  final List<String> items;

  /// The counted items being rewarded.
  final List<CountedItem> countedItems;

  /// The credits being rewarded.
  final int credits;

  /// Item thumnail.
  final String thumbnail;

  /// Item color.
  final int color;

  /// Creates a json map from [Reward].
  Map<String, dynamic> toJson() => _$RewardToJson(this);

  @override
  List<Object?> get props {
    return [countedItems, thumbnail, color, credits, items];
  }
}

/// {@template counted_item}
/// Represents a reward item with its quantity. Used to track multiple instances
/// of the same item type in a reward.
/// {@endtemplate}
@JsonSerializable()
class CountedItem extends Equatable {
  /// {@macro counted_item}
  const CountedItem({required this.count, required this.type, required this.key});

  /// [CountedItem] from a json map
  factory CountedItem.fromJson(Map<String, dynamic> json) {
    return _$CountedItemFromJson(json);
  }

  /// Quantity of items being rewarded.
  final int count;

  /// Type of reward.
  final String type;

  /// Non-translated version of [type]
  final String key;

  /// Get a json map
  Map<String, dynamic> toJson() => _$CountedItemToJson(this);

  @override
  List<Object> get props => [count, type, key];
}
