// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map json) => $checkedCreate('Node', json, (
  $checkedConvert,
) {
  final val = Node(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    imageName: $checkedConvert('imageName', (v) => v as String?),
    factionIndex: $checkedConvert('factionIndex', (v) => (v as num).toInt()),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num).toInt()),
    maxEnemyLevel: $checkedConvert('maxEnemyLevel', (v) => (v as num).toInt()),
    minEnemyLevel: $checkedConvert('minEnemyLevel', (v) => (v as num).toInt()),
    nodeType: $checkedConvert('nodeType', (v) => (v as num).toInt()),
    systemIndex: $checkedConvert('systemIndex', (v) => (v as num).toInt()),
    systemName: $checkedConvert('systemName', (v) => v as String),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  'productCategory': ?instance.productCategory,
  'imageName': ?instance.imageName,
  'patchlogs': ?instance.patchlogs?.map((e) => e.toJson()).toList(),
  'factionIndex': instance.factionIndex,
  'masteryReq': instance.masteryReq,
  'maxEnemyLevel': instance.maxEnemyLevel,
  'minEnemyLevel': instance.minEnemyLevel,
  'nodeType': instance.nodeType,
  'systemIndex': instance.systemIndex,
  'systemName': instance.systemName,
};
