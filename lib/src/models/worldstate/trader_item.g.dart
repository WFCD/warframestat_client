// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderItem _$TraderItemFromJson(Map json) => $checkedCreate(
      'TraderItem',
      json,
      ($checkedConvert) {
        final val = TraderItem(
          item: $checkedConvert('item', (v) => v as String),
          ducats: $checkedConvert('ducats', (v) => v as int?),
          credits: $checkedConvert('credits', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TraderItemToJson(TraderItem instance) {
  final val = <String, dynamic>{
    'item': instance.item,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ducats', instance.ducats);
  writeNotNull('credits', instance.credits);
  return val;
}
