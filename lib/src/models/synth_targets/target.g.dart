// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Target _$TargetFromJson(Map json) => $checkedCreate(
      'Target',
      json,
      ($checkedConvert) {
        final val = Target(
          name: $checkedConvert('name', (v) => v as String),
          imageKey: $checkedConvert('imageKey', (v) => v as String),
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

Map<String, dynamic> _$TargetToJson(Target instance) => <String, dynamic>{
      'name': instance.name,
      'imageKey': instance.imageKey,
      'locations': instance.locations.map((e) => e.toJson()).toList(),
    };
