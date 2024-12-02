// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map json) => $checkedCreate(
      'News',
      json,
      ($checkedConvert) {
        final val = News(
          id: $checkedConvert('id', (v) => v as String?),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          endDate: $checkedConvert(
              'endDate', (v) => v == null ? null : DateTime.parse(v as String)),
          eta: $checkedConvert('eta', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String),
          link: $checkedConvert('link', (v) => v as String),
          imageLink: $checkedConvert('imageLink', (v) => v as String),
          translations: $checkedConvert(
              'translations', (v) => Map<String, String>.from(v as Map)),
          primeAccess: $checkedConvert('primeAccess', (v) => v as bool),
          stream: $checkedConvert('stream', (v) => v as bool),
          update: $checkedConvert('update', (v) => v as bool),
          priority: $checkedConvert('priority', (v) => v as bool),
          asString: $checkedConvert('asString', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'message': instance.message,
      'link': instance.link,
      'priority': instance.priority,
      'imageLink': instance.imageLink,
      'date': instance.date.toIso8601String(),
      if (instance.endDate?.toIso8601String() case final value?)
        'endDate': value,
      'eta': instance.eta,
      'primeAccess': instance.primeAccess,
      'stream': instance.stream,
      'update': instance.update,
      'translations': instance.translations,
      'asString': instance.asString,
    };
