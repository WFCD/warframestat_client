// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simaris.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Simaris _$SimarisFromJson(Map json) =>
    $checkedCreate('Simaris', json, ($checkedConvert) {
      final val = Simaris(
        target: $checkedConvert('target', (v) => v as String),
        isTargetActive: $checkedConvert('isTargetActive', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$SimarisToJson(Simaris instance) => <String, dynamic>{
  'target': instance.target,
  'isTargetActive': instance.isTargetActive,
};
