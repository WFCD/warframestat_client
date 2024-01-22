// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinimalItem _$MinimalItemFromJson(Map json) => $checkedCreate(
      'MinimalItem',
      json,
      ($checkedConvert) {
        final val = MinimalItem(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$MinimalItemToJson(MinimalItem instance) {
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
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  return val;
}
