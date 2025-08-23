// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'archimedea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Archimedea _$ArchimedeaFromJson(Map json) =>
    $checkedCreate('Archimedea', json, ($checkedConvert) {
      final val = Archimedea(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        missions: $checkedConvert(
          'missions',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ArchimedeaMission.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList(),
        ),
        personalModifiers: $checkedConvert(
          'personalModifiers',
          (v) => (v as List<dynamic>)
              .map(
                (e) => _$recordConvertAny(
                  e,
                  ($jsonValue) => (
                    description: $jsonValue['description'] as String,
                    key: $jsonValue['key'] as String,
                    name: $jsonValue['name'] as String,
                  ),
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ArchimedeaToJson(
  Archimedea instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'activation': ?instance.activation?.toIso8601String(),
  'expiry': ?instance.expiry?.toIso8601String(),
  'missions': instance.missions.map((e) => e.toJson()).toList(),
  'personalModifiers': instance.personalModifiers
      .map(
        (e) => <String, dynamic>{
          'description': e.description,
          'key': e.key,
          'name': e.name,
        },
      )
      .toList(),
};

$Rec _$recordConvertAny<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map);

ArchimedeaMission _$ArchimedeaMissionFromJson(Map json) =>
    $checkedCreate('ArchimedeaMission', json, ($checkedConvert) {
      final val = ArchimedeaMission(
        mission: $checkedConvert('mission', (v) => v as String),
        deviation: $checkedConvert(
          'deviation',
          (v) => _$recordConvertAny(
            v,
            ($jsonValue) => (
              description: $jsonValue['description'] as String,
              key: $jsonValue['key'] as String,
              name: $jsonValue['name'] as String,
            ),
          ),
        ),
        riskVariables: $checkedConvert(
          'riskVariables',
          (v) => (v as List<dynamic>)
              .map(
                (e) => _$recordConvertAny(
                  e,
                  ($jsonValue) => (
                    description: $jsonValue['description'] as String,
                    key: $jsonValue['key'] as String,
                    name: $jsonValue['name'] as String,
                  ),
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ArchimedeaMissionToJson(
  ArchimedeaMission instance,
) => <String, dynamic>{
  'mission': instance.mission,
  'deviation': <String, dynamic>{
    'description': instance.deviation.description,
    'key': instance.deviation.key,
    'name': instance.deviation.name,
  },
  'riskVariables': instance.riskVariables
      .map(
        (e) => <String, dynamic>{
          'description': e.description,
          'key': e.key,
          'name': e.name,
        },
      )
      .toList(),
};
