import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'daily_deal.g.dart';

/// {@template daily_deals}
/// DailyDeals description
/// {@endtemplate}
@JsonSerializable()
class DailyDeal extends WorldstateObject {
  /// {@macro daily_deals}
  const DailyDeal({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.item,
    required this.uniqueName,
    required this.originalPrice,
    required this.salePrice,
    required this.total,
    required this.sold,
    required this.discount,
  });

  /// Creates a DailyDeals from Json map
  factory DailyDeal.fromJson(Map<String, dynamic> json) =>
      _$DailyDealFromJson(json);

  /// The item on sale.
  final String item;

  /// Unique name of item being sold.
  final String uniqueName;

  /// The original price the item is usually sold for.
  final int originalPrice;

  /// The sale price for the item.
  final int salePrice;

  /// The total stock of items on sale.
  final int total;

  /// Number of items already sold.
  final int sold;

  /// The discount applied to the item.
  final int discount;

  /// Items left in stock.
  int get remainingStock => total - sold;

  /// Creates a Json map from a DailyDeals
  Map<String, dynamic> toJson() => _$DailyDealToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      item,
      uniqueName,
      originalPrice,
      salePrice,
      total,
      sold,
      discount,
    ]);
}
