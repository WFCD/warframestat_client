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
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'factionIndex': instance.factionIndex,
      'masteryReq': instance.masteryReq,
      'maxEnemyLevel': instance.maxEnemyLevel,
      'minEnemyLevel': instance.minEnemyLevel,
      'nodeType': instance.nodeType,
      'systemIndex': instance.systemIndex,
      'systemName': instance.systemName,
    };
