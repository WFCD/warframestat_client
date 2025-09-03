// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


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
        discount: $checkedConvert('discount', (v) => (v as num).toInt()),
        regularOverride: $checkedConvert(
          'regularOverride',
          (v) => (v as num?)?.toInt(),
        ),
        premiumOverride: $checkedConvert(
          'premiumOverride',
          (v) => (v as num).toInt(),
        ),
        isPopular: $checkedConvert('isPopular', (v) => v as bool? ?? false),
        isFeatured: $checkedConvert('isFeatured', (v) => v as bool? ?? false),
        isShownInMarket: $checkedConvert(
          'isShownInMarket',
          (v) => v as bool? ?? false,
        ),
      );
      return val;
    });

Map<String, dynamic> _$FlashSaleToJson(FlashSale instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'item': instance.item,
  'discount': instance.discount,
  'regularOverride': ?instance.regularOverride,
  'premiumOverride': instance.premiumOverride,
  'isPopular': instance.isPopular,
  'isFeatured': instance.isFeatured,
  'isShownInMarket': instance.isShownInMarket,
};
