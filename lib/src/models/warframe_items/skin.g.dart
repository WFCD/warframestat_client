// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skin _$SkinFromJson(Map json) => $checkedCreate(
      'Skin',
      json,
      ($checkedConvert) {
        final val = Skin(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          excludeFromCodex:
              $checkedConvert('excludeFromCodex', (v) => v as bool?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SkinToJson(Skin instance) {
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
  val['type'] = const ItemTypeConverter().toJson(instance.type);
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  writeNotNull('releaseDate', instance.releaseDate);
  writeNotNull('excludeFromCodex', instance.excludeFromCodex);
  writeNotNull('wikiaThumbnail', instance.wikiaThumbnail);
  writeNotNull('wikiaUrl', instance.wikiaUrl);
  return val;
}

SkinBuildable _$SkinBuildableFromJson(Map json) => $checkedCreate(
      'SkinBuildable',
      json,
      ($checkedConvert) {
        final val = SkinBuildable(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          buildPrice:
              $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
          buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => (v as num).toInt()),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          masteryReq:
              $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
          marketCost:
              $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
          bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
          itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
          isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$SkinBuildableToJson(SkinBuildable instance) {
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
  val['type'] = const ItemTypeConverter().toJson(instance.type);
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  writeNotNull('releaseDate', instance.releaseDate);
  writeNotNull('wikiaThumbnail', instance.wikiaThumbnail);
  writeNotNull('wikiaUrl', instance.wikiaUrl);
  val['isPrime'] = instance.isPrime;
  writeNotNull('vaulted', instance.vaulted);
  writeNotNull('masteryReq', instance.masteryReq);
  val['buildPrice'] = instance.buildPrice;
  val['buildQuantity'] = instance.buildQuantity;
  val['buildTime'] = instance.buildTime;
  val['skipBuildTimePrice'] = instance.skipBuildTimePrice;
  val['consumeOnBuild'] = instance.consumeOnBuild;
  writeNotNull(
      'components', instance.components?.map((e) => e.toJson()).toList());
  writeNotNull('marketCost', instance.marketCost);
  writeNotNull('bpCost', instance.bpCost);
  writeNotNull('itemCount', instance.itemCount);
  return val;
}
