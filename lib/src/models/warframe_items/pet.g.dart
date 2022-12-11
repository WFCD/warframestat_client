// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map json) => $checkedCreate(
      'Pet',
      json,
      ($checkedConvert) {
        final val = Pet(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
        );
        return val;
      },
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'imageName': instance.imageName,
      'armor': instance.armor,
      'health': instance.health,
      'shield': instance.shield,
      'stamina': instance.stamina,
    };
