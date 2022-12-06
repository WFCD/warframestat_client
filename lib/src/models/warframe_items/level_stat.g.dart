// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelStat _$LevelStatFromJson(Map json) => $checkedCreate(
      'LevelStat',
      json,
      ($checkedConvert) {
        final val = LevelStat(
          stats: $checkedConvert('stats',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$LevelStatToJson(LevelStat instance) => <String, dynamic>{
      'stats': instance.stats,
    };
