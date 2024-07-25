// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map json) => $checkedCreate(
      'Component',
      json,
      ($checkedConvert) {
        final val = Component(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          itemCount: $checkedConvert('itemCount', (v) => (v as num).toInt()),
          imageName: $checkedConvert('imageName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ComponentToJson(Component instance) {
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
  val['tradable'] = instance.tradable;
  writeNotNull('imageName', instance.imageName);
  writeNotNull('drops', instance.drops?.map((e) => e.toJson()).toList());
  val['itemCount'] = instance.itemCount;
  return val;
}
