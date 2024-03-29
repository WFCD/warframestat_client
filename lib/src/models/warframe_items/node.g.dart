// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map json) => $checkedCreate(
      'Node',
      json,
      ($checkedConvert) {
        final val = Node(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          factionIndex: $checkedConvert('factionIndex', (v) => v as int),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int),
          maxEnemyLevel: $checkedConvert('maxEnemyLevel', (v) => v as int),
          minEnemyLevel: $checkedConvert('minEnemyLevel', (v) => v as int),
          nodeType: $checkedConvert('nodeType', (v) => v as int),
          systemIndex: $checkedConvert('systemIndex', (v) => v as int),
          systemName: $checkedConvert('systemName', (v) => v as String),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$NodeToJson(Node instance) {
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
  val['factionIndex'] = instance.factionIndex;
  val['masteryReq'] = instance.masteryReq;
  val['maxEnemyLevel'] = instance.maxEnemyLevel;
  val['minEnemyLevel'] = instance.minEnemyLevel;
  val['nodeType'] = instance.nodeType;
  val['systemIndex'] = instance.systemIndex;
  val['systemName'] = instance.systemName;
  return val;
}
