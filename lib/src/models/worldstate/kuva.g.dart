// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'kuva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kuva _$KuvaFromJson(Map json) =>
    $checkedCreate('Kuva', json, ($checkedConvert) {
      final val = Kuva(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        active: $checkedConvert('active', (v) => v as bool),
        node: $checkedConvert('node', (v) => v as String),
        enemy: $checkedConvert('enemy', (v) => v as String),
        enemyKey: $checkedConvert('enemyKey', (v) => v as String),
        type: $checkedConvert('type', (v) => v as String),
        typeKey: $checkedConvert('typeKey', (v) => v as String),
        archwing: $checkedConvert('archwing', (v) => v as bool),
        sharkwing: $checkedConvert('sharkwing', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$KuvaToJson(Kuva instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'active': instance.active,
  'node': instance.node,
  'enemy': instance.enemy,
  'enemyKey': instance.enemyKey,
  'type': instance.type,
  'typeKey': instance.typeKey,
  'archwing': instance.archwing,
  'sharkwing': instance.sharkwing,
};
