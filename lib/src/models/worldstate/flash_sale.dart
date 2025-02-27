import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'flash_sale.g.dart';

/// {@template flash_sale}
/// FlashSale description
/// {@endtemplate}
@JsonSerializable()
class FlashSale extends WorldstateObject {
  /// {@macro flash_sale}
  const FlashSale({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.item,
    required this.expired,
    required this.discount,
    required this.premiumOverride,
    this.isPopular = false,
    this.isFeatured = false,
  });

  /// Creates a FlashSale from Json map
  factory FlashSale.fromJson(Map<String, dynamic> json) => _$FlashSaleFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// A description for item
  final String item;

  /// A description for expired
  final bool expired;

  /// A description for discount
  final int discount;

  /// A description for premiumOverride
  final int premiumOverride;

  /// A description for isPopular
  final bool isPopular;

  /// A description for isFeatured
  final bool isFeatured;

  /// Creates a Json map from a FlashSale
  Map<String, dynamic> toJson() => _$FlashSaleToJson(this);

  @override
  List<Object?> get props => super.props..addAll([item, expired, discount, premiumOverride, isPopular, isFeatured]);
}
