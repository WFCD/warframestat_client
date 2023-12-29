// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceBuildable _$ResourceBuildableFromJson(Map json) => $checkedCreate(
      'ResourceBuildable',
      json,
      ($checkedConvert) {
        final val = ResourceBuildable(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int),
          buildTime: $checkedConvert('buildTime', (v) => v as int),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResourceBuildableToJson(ResourceBuildable instance) {
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
  writeNotNull('imageName', instance.imageName);
  val['isPrime'] = instance.isPrime;
  val['buildPrice'] = instance.buildPrice;
  val['buildQuantity'] = instance.buildQuantity;
  val['buildTime'] = instance.buildTime;
  val['skipBuildTimePrice'] = instance.skipBuildTimePrice;
  val['consumeOnBuild'] = instance.consumeOnBuild;
  writeNotNull(
      'components', instance.components?.map((e) => e.toJson()).toList());
  return val;
}

Resource _$ResourceFromJson(Map json) => $checkedCreate(
      'Resource',
      json,
      ($checkedConvert) {
        final val = Resource(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) {
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
  writeNotNull('imageName', instance.imageName);
  writeNotNull('drops', instance.drops?.map((e) => e.toJson()).toList());
  return val;
}
