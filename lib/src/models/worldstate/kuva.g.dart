// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kuva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kuva _$KuvaFromJson(Map json) => $checkedCreate(
      'Kuva',
      json,
      ($checkedConvert) {
        final val = Kuva(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
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
      },
    );

Map<String, dynamic> _$KuvaToJson(Kuva instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['active'] = instance.active;
  val['node'] = instance.node;
  val['enemy'] = instance.enemy;
  val['enemyKey'] = instance.enemyKey;
  val['type'] = instance.type;
  val['typeKey'] = instance.typeKey;
  val['archwing'] = instance.archwing;
  val['sharkwing'] = instance.sharkwing;
  return val;
}
