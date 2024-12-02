// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glyph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Glyph _$GlyphFromJson(Map json) => $checkedCreate(
      'Glyph',
      json,
      ($checkedConvert) {
        final val = Glyph(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
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
          imageName: $checkedConvert('imageName', (v) => v as String?),
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

Map<String, dynamic> _$GlyphToJson(Glyph instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      'type': const ItemTypeConverter().toJson(instance.type),
      'category': instance.category,
      if (instance.productCategory case final value?) 'productCategory': value,
      'tradable': instance.tradable,
      if (instance.patchlogs?.map((e) => e.toJson()).toList() case final value?)
        'patchlogs': value,
      if (instance.imageName case final value?) 'imageName': value,
      if (instance.releaseDate case final value?) 'releaseDate': value,
      if (instance.excludeFromCodex case final value?)
        'excludeFromCodex': value,
      if (instance.wikiaThumbnail case final value?) 'wikiaThumbnail': value,
      if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
    };
