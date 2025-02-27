// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_suit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ability _$AbilityFromJson(Map json) =>
    $checkedCreate('Ability', json, ($checkedConvert) {
      final val = Ability(
        name: $checkedConvert('name', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        imageName: $checkedConvert('imageName', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'imageName': instance.imageName,
};
