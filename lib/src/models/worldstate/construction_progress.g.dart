// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructionProgress _$ConstructionProgressFromJson(Map json) => $checkedCreate(
      'ConstructionProgress',
      json,
      ($checkedConvert) {
        final val = ConstructionProgress(
          id: $checkedConvert('id', (v) => v as String?),
          fomorianProgress:
              $checkedConvert('fomorianProgress', (v) => v as String),
          razorbackProgress:
              $checkedConvert('razorbackProgress', (v) => v as String),
          unknownProgress:
              $checkedConvert('unknownProgress', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConstructionProgressToJson(
    ConstructionProgress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['fomorianProgress'] = instance.fomorianProgress;
  val['razorbackProgress'] = instance.razorbackProgress;
  val['unknownProgress'] = instance.unknownProgress;
  return val;
}
