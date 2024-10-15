// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deep_archimedea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeepArchimedea _$DeepArchimedeaFromJson(Map json) => $checkedCreate(
      'DeepArchimedea',
      json,
      ($checkedConvert) {
        final val = DeepArchimedea(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          missions: $checkedConvert(
              'missions',
              (v) => (v as List<dynamic>)
                  .map((e) => DeepArchimedeaMission.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          personalModifiers: $checkedConvert(
              'personalModifiers',
              (v) => (v as List<dynamic>)
                  .map((e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          description: $jsonValue['description'] as String,
                          key: $jsonValue['key'] as String,
                          name: $jsonValue['name'] as String,
                        ),
                      ))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DeepArchimedeaToJson(DeepArchimedea instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['missions'] = instance.missions.map((e) => e.toJson()).toList();
  val['personalModifiers'] = instance.personalModifiers
      .map((e) => <String, dynamic>{
            'description': e.description,
            'key': e.key,
            'name': e.name,
          })
      .toList();
  return val;
}

$Rec _$recordConvertAny<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map);

DeepArchimedeaMission _$DeepArchimedeaMissionFromJson(Map json) =>
    $checkedCreate(
      'DeepArchimedeaMission',
      json,
      ($checkedConvert) {
        final val = DeepArchimedeaMission(
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
                  )),
          riskVariables: $checkedConvert(
              'riskVariables',
              (v) => (v as List<dynamic>)
                  .map((e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          description: $jsonValue['description'] as String,
                          key: $jsonValue['key'] as String,
                          name: $jsonValue['name'] as String,
                        ),
                      ))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DeepArchimedeaMissionToJson(
        DeepArchimedeaMission instance) =>
    <String, dynamic>{
      'mission': instance.mission,
      'deviation': <String, dynamic>{
        'description': instance.deviation.description,
        'key': instance.deviation.key,
        'name': instance.deviation.name,
      },
      'riskVariables': instance.riskVariables
          .map((e) => <String, dynamic>{
                'description': e.description,
                'key': e.key,
                'name': e.name,
              })
          .toList(),
    };
