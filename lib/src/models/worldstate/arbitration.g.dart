// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbitration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arbitration _$ArbitrationFromJson(Map json) =>
    $checkedCreate('Arbitration', json, ($checkedConvert) {
      final val = Arbitration(
        id: $checkedConvert('id', (v) => v as String?),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        node: $checkedConvert('node', (v) => v as String),
        nodeKey: $checkedConvert('nodeKey', (v) => v as String),
        enemy: $checkedConvert('enemy', (v) => v as String?),
        type: $checkedConvert('type', (v) => v as String),
        typeKey: $checkedConvert('typeKey', (v) => v as String),
        archwing: $checkedConvert('archwing', (v) => v as bool?),
        sharkwing: $checkedConvert('sharkwing', (v) => v as bool?),
        expired: $checkedConvert('expired', (v) => v as bool? ?? false),
      );
      return val;
    });

Map<String, dynamic> _$ArbitrationToJson(Arbitration instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'node': instance.node,
      'nodeKey': instance.nodeKey,
      if (instance.enemy case final value?) 'enemy': value,
      'type': instance.type,
      'typeKey': instance.typeKey,
      if (instance.archwing case final value?) 'archwing': value,
      if (instance.sharkwing case final value?) 'sharkwing': value,
      'expired': instance.expired,
    };
