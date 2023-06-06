// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyDeal _$DailyDealFromJson(Map json) => $checkedCreate(
      'DailyDeal',
      json,
      ($checkedConvert) {
        final val = DailyDeal(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          item: $checkedConvert('item', (v) => v as String),
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          originalPrice: $checkedConvert('originalPrice', (v) => v as int),
          salePrice: $checkedConvert('salePrice', (v) => v as int),
          total: $checkedConvert('total', (v) => v as int),
          sold: $checkedConvert('sold', (v) => v as int),
          discount: $checkedConvert('discount', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$DailyDealToJson(DailyDeal instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['item'] = instance.item;
  val['uniqueName'] = instance.uniqueName;
  val['originalPrice'] = instance.originalPrice;
  val['salePrice'] = instance.salePrice;
  val['total'] = instance.total;
  val['sold'] = instance.sold;
  val['discount'] = instance.discount;
  return val;
}
