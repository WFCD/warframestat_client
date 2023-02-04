// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateJob _$SyndicateJobFromJson(Map json) => $checkedCreate(
      'SyndicateJob',
      json,
      ($checkedConvert) {
        final val = SyndicateJob(
          id: $checkedConvert('id', (v) => v as String),
          rewardPool: $checkedConvert('rewardPool',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          type: $checkedConvert('type', (v) => v as String?),
          enemyLevels: $checkedConvert('enemyLevels',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          standingStages: $checkedConvert('standingStages',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          minMr: $checkedConvert('minMr', (v) => v as int?),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SyndicateJobToJson(SyndicateJob instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'rewardPool': instance.rewardPool,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  val['enemyLevels'] = instance.enemyLevels;
  val['standingStages'] = instance.standingStages;
  writeNotNull('minMr', instance.minMr);
  val['expiry'] = instance.expiry.toIso8601String();
  return val;
}
