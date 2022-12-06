// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patchlog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patchlog _$PatchlogFromJson(Map json) => $checkedCreate(
      'Patchlog',
      json,
      ($checkedConvert) {
        final val = Patchlog(
          name: $checkedConvert('name', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          url: $checkedConvert('url', (v) => v as String),
          additions: $checkedConvert('additions', (v) => v as String),
          changes: $checkedConvert('changes', (v) => v as String),
          fixes: $checkedConvert('fixes', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PatchlogToJson(Patchlog instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'url': instance.url,
      'additions': instance.additions,
      'changes': instance.changes,
      'fixes': instance.fixes,
    };
