// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fish _$FishFromJson(Map json) => $checkedCreate(
      'Fish',
      json,
      ($checkedConvert) {
        final val = Fish(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$FishToJson(Fish instance) {
  final val = <String, dynamic>{
    'uniqueName': instance.uniqueName,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['type'] = instance.type;
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  return val;
}