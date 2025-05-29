// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'daily_deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyDeal _$DailyDealFromJson(Map json) => $checkedCreate('DailyDeal', json, (
  $checkedConvert,
) {
  final val = DailyDeal(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    item: $checkedConvert('item', (v) => v as String),
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    originalPrice: $checkedConvert('originalPrice', (v) => (v as num).toInt()),
    salePrice: $checkedConvert('salePrice', (v) => (v as num).toInt()),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    sold: $checkedConvert('sold', (v) => (v as num).toInt()),
    discount: $checkedConvert('discount', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$DailyDealToJson(DailyDeal instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'item': instance.item,
  'uniqueName': instance.uniqueName,
  'originalPrice': instance.originalPrice,
  'salePrice': instance.salePrice,
  'total': instance.total,
  'sold': instance.sold,
  'discount': instance.discount,
};
