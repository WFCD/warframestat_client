// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zariman_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZarimanCycle _$ZarimanCycleFromJson(Map json) => $checkedCreate(
      'ZarimanCycle',
      json,
      ($checkedConvert) {
        final val = ZarimanCycle(
          id: $checkedConvert('id', (v) => v as String?),
          activation: $checkedConvert('activation',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiry: $checkedConvert(
              'expiry', (v) => v == null ? null : DateTime.parse(v as String)),
          bountiesEndDate: $checkedConvert(
              'bountiesEndDate', (v) => DateTime.parse(v as String)),
          isCorpus: $checkedConvert('isCorpus', (v) => v as bool),
          state: $checkedConvert(
              'state', (v) => $enumDecode(_$ZarimanStateEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ZarimanCycleToJson(ZarimanCycle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['bountiesEndDate'] = instance.bountiesEndDate.toIso8601String();
  val['isCorpus'] = instance.isCorpus;
  val['state'] = _$ZarimanStateEnumMap[instance.state]!;
  return val;
}

const _$ZarimanStateEnumMap = {
  ZarimanState.corpus: 'corpus',
  ZarimanState.grineer: 'grineer',
};
