// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthTarget _$SynthTargetFromJson(Map json) => $checkedCreate(
      'SynthTarget',
      json,
      ($checkedConvert) {
        final val = SynthTarget(
          name: $checkedConvert('name', (v) => v as String),
          imageKey: $checkedConvert('imageKey', (v) => v as String?),
          locations: $checkedConvert(
              'locations',
              (v) => (v as List<dynamic>)
                  .map((e) => TargetLocation.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SynthTargetToJson(SynthTarget instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageKey', instance.imageKey);
  val['locations'] = instance.locations.map((e) => e.toJson()).toList();
  return val;
}
