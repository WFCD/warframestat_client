// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kinepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kinepage _$KinepageFromJson(Map json) => $checkedCreate(
      'Kinepage',
      json,
      ($checkedConvert) {
        final val = Kinepage(
          timestamp:
              $checkedConvert('timestamp', (v) => DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String),
          translations: $checkedConvert(
              'translations',
              (v) => (v as Map).map(
                    (k, e) => MapEntry(
                        $enumDecode(_$LanguageEnumMap, k), e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$KinepageToJson(Kinepage instance) => <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'message': instance.message,
      'translations': instance.translations
          .map((k, e) => MapEntry(_$LanguageEnumMap[k]!, e)),
    };

const _$LanguageEnumMap = {
  Language.de: 'de',
  Language.es: 'es',
  Language.fr: 'fr',
  Language.it: 'it',
  Language.ko: 'ko',
  Language.pl: 'pl',
  Language.pt: 'pt',
  Language.ru: 'ru',
  Language.zh: 'zh',
  Language.en: 'en',
  Language.tr: 'tr',
  Language.sr: 'sr',
  Language.cs: 'cs',
  Language.uk: 'uk',
  Language.ja: 'ja',
  Language.tc: 'tc',
  Language.th: 'th',
};
