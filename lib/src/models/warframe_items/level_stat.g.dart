// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'level_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelStat _$LevelStatFromJson(Map json) =>
    $checkedCreate('LevelStat', json, ($checkedConvert) {
      final val = LevelStat(
        stats: $checkedConvert(
          'stats',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$LevelStatToJson(LevelStat instance) => <String, dynamic>{
  'stats': instance.stats,
};
