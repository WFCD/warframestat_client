// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vallis_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VallisCycle _$VallisCycleFromJson(Map json) => $checkedCreate(
      'VallisCycle',
      json,
      ($checkedConvert) {
        final val = VallisCycle(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          isWarm: $checkedConvert('isWarm', (v) => v as bool),
          state: $checkedConvert(
              'state', (v) => $enumDecode(_$VallisStateEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$VallisCycleToJson(VallisCycle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['isWarm'] = instance.isWarm;
  val['state'] = _$VallisStateEnumMap[instance.state]!;
  return val;
}

const _$VallisStateEnumMap = {
  VallisState.cold: 'cold',
  VallisState.warm: 'warm',
};
