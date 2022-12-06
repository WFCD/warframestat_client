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
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          itemCount: $checkedConvert('itemCount', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
      'itemCount': instance.itemCount,
    };
