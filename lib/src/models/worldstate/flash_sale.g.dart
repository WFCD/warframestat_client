// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlashSale _$FlashSaleFromJson(Map json) =>
    $checkedCreate('FlashSale', json, ($checkedConvert) {
      final val = FlashSale(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        item: $checkedConvert('item', (v) => v as String),
        expired: $checkedConvert('expired', (v) => v as bool),
        discount: $checkedConvert('discount', (v) => (v as num).toInt()),
        premiumOverride: $checkedConvert(
          'premiumOverride',
          (v) => (v as num).toInt(),
        ),
        isPopular: $checkedConvert('isPopular', (v) => v as bool? ?? false),
        isFeatured: $checkedConvert('isFeatured', (v) => v as bool? ?? false),
      );
      return val;
    });

Map<String, dynamic> _$FlashSaleToJson(FlashSale instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'item': instance.item,
  'expired': instance.expired,
  'discount': instance.discount,
  'premiumOverride': instance.premiumOverride,
  'isPopular': instance.isPopular,
  'isFeatured': instance.isFeatured,
};
