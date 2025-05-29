// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'syndicate_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateJob _$SyndicateJobFromJson(Map json) =>
    $checkedCreate('SyndicateJob', json, ($checkedConvert) {
      final val = SyndicateJob(
        id: $checkedConvert('id', (v) => v as String),
        rewardPool: $checkedConvert(
          'rewardPool',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        type: $checkedConvert('type', (v) => v as String?),
        enemyLevels: $checkedConvert(
          'enemyLevels',
          (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
        standingStages: $checkedConvert(
          'standingStages',
          (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
        minMr: $checkedConvert('minMr', (v) => (v as num?)?.toInt()),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$SyndicateJobToJson(SyndicateJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rewardPool': instance.rewardPool,
      if (instance.type case final value?) 'type': value,
      'enemyLevels': instance.enemyLevels,
      'standingStages': instance.standingStages,
      if (instance.minMr case final value?) 'minMr': value,
      'expiry': instance.expiry.toIso8601String(),
    };
