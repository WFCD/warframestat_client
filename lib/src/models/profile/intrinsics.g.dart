// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intrinsics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Intrinsics _$IntrinsicsFromJson(Map json) => $checkedCreate(
      'Intrinsics',
      json,
      ($checkedConvert) {
        final val = Intrinsics(
          space: $checkedConvert('space', (v) => v as int),
          engineering: $checkedConvert('engineering', (v) => v as int),
          gunnery: $checkedConvert('gunnery', (v) => v as int),
          piloting: $checkedConvert('piloting', (v) => v as int),
          tactical: $checkedConvert('tactical', (v) => v as int),
          command: $checkedConvert('command', (v) => v as int),
          drifter: $checkedConvert('drifter', (v) => v as int),
          riding: $checkedConvert('riding', (v) => v as int),
          combat: $checkedConvert('combat', (v) => v as int),
          opportunity: $checkedConvert('opportunity', (v) => v as int),
          endurance: $checkedConvert('endurance', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$IntrinsicsToJson(Intrinsics instance) =>
    <String, dynamic>{
      'space': instance.space,
      'engineering': instance.engineering,
      'gunnery': instance.gunnery,
      'piloting': instance.piloting,
      'tactical': instance.tactical,
      'command': instance.command,
      'drifter': instance.drifter,
      'riding': instance.riding,
      'combat': instance.combat,
      'opportunity': instance.opportunity,
      'endurance': instance.endurance,
    };
