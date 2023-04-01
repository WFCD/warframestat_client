// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arbitration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arbitration _$ArbitrationFromJson(Map json) => $checkedCreate(
      'Arbitration',
      json,
      ($checkedConvert) {
        final val = Arbitration(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          node: $checkedConvert('node', (v) => v as String),
          nodeKey: $checkedConvert('nodeKey', (v) => v as String),
          enemy: $checkedConvert('enemy', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          typeKey: $checkedConvert('typeKey', (v) => v as String),
          archwing: $checkedConvert('archwing', (v) => v as bool?),
          sharkwing: $checkedConvert('sharkwing', (v) => v as bool?),
          expired: $checkedConvert('expired', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArbitrationToJson(Arbitration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['node'] = instance.node;
  val['nodeKey'] = instance.nodeKey;
  writeNotNull('enemy', instance.enemy);
  val['type'] = instance.type;
  val['typeKey'] = instance.typeKey;
  writeNotNull('archwing', instance.archwing);
  writeNotNull('sharkwing', instance.sharkwing);
  val['expired'] = instance.expired;
  return val;
}
