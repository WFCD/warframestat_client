// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arsenal_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArsenalItem _$ArsenalItemFromJson(Map json) => $checkedCreate(
  'ArsenalItem',
  json,
  ($checkedConvert) {
    final val = ArsenalItem(
      id: $checkedConvert('itemId', (v) => v as String),
      uniqueName: $checkedConvert('uniqueName', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String?),
      item: $checkedConvert('item', (v) => toItem(v as Map<String, dynamic>)),
      nemesis: $checkedConvert('nemesis', (v) => v as String?),
      configs: $checkedConvert(
        'configs',
        (v) =>
            (v as List<dynamic>)
                .map(
                  (e) =>
                      ItemConfig.fromJson(Map<String, dynamic>.from(e as Map)),
                )
                .toList(),
      ),
      upgradeTypes: $checkedConvert('upgradeTypes', (v) => v as String?),
      upgradeFingerPrint: $checkedConvert(
        'upgradeFingerPrint',
        (v) => (v as Map?)?.map((k, e) => MapEntry(k as String, e)),
      ),
      features: $checkedConvert('features', (v) => (v as num?)?.toInt()),
      upgradeVersion: $checkedConvert('upgradeVer', (v) => (v as num).toInt()),
      xp: $checkedConvert('xp', (v) => (v as num?)?.toInt()),
      polarized: $checkedConvert('polarized', (v) => (v as num?)?.toInt()),
      polarities: $checkedConvert(
        'polarities',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => _$recordConvertAny(
                    e,
                    ($jsonValue) => (
                      polarity: $jsonValue['polarity'] as String,
                      slot: ($jsonValue['slot'] as num).toInt(),
                    ),
                  ),
                )
                .toList(),
      ),
      focusLens: $checkedConvert('focusLens', (v) => v as String?),
      customizationSlots: $checkedConvert(
        'customizationSlots',
        (v) => (v as num?)?.toInt(),
      ),
      primaryColor: $checkedConvert(
        'primaryColor',
        (v) => _$recordConvertAnyNullable(
          v,
          ($jsonValue) => (
            hex: $jsonValue['hex'] as String?,
            matches:
                ($jsonValue['matches'] as List<dynamic>?)
                    ?.map(
                      (e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          palette: _$recordConvertAny(
                            $jsonValue['palette'],
                            ($jsonValue) => (
                              description: $jsonValue['description'] as String,
                              name: $jsonValue['name'] as String,
                            ),
                          ),
                          position: _$recordConvertAny(
                            $jsonValue['position'],
                            ($jsonValue) => (
                              col: ($jsonValue['col'] as num).toInt(),
                              row: ($jsonValue['row'] as num).toInt(),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
      sigilColor: $checkedConvert(
        'sigilColor',
        (v) => _$recordConvertAnyNullable(
          v,
          ($jsonValue) => (
            hex: $jsonValue['hex'] as String?,
            matches:
                ($jsonValue['matches'] as List<dynamic>?)
                    ?.map(
                      (e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          palette: _$recordConvertAny(
                            $jsonValue['palette'],
                            ($jsonValue) => (
                              description: $jsonValue['description'] as String,
                              name: $jsonValue['name'] as String,
                            ),
                          ),
                          position: _$recordConvertAny(
                            $jsonValue['position'],
                            ($jsonValue) => (
                              col: ($jsonValue['col'] as num).toInt(),
                              row: ($jsonValue['row'] as num).toInt(),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
      attachmentsColor: $checkedConvert(
        'attachmentsColor',
        (v) => _$recordConvertAnyNullable(
          v,
          ($jsonValue) => (
            hex: $jsonValue['hex'] as String?,
            matches:
                ($jsonValue['matches'] as List<dynamic>?)
                    ?.map(
                      (e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          palette: _$recordConvertAny(
                            $jsonValue['palette'],
                            ($jsonValue) => (
                              description: $jsonValue['description'] as String,
                              name: $jsonValue['name'] as String,
                            ),
                          ),
                          position: _$recordConvertAny(
                            $jsonValue['position'],
                            ($jsonValue) => (
                              col: ($jsonValue['col'] as num).toInt(),
                              row: ($jsonValue['row'] as num).toInt(),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
      syandanaColor: $checkedConvert(
        'syandanaColor',
        (v) => _$recordConvertAnyNullable(
          v,
          ($jsonValue) => (
            hex: $jsonValue['hex'] as String?,
            matches:
                ($jsonValue['matches'] as List<dynamic>?)
                    ?.map(
                      (e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          palette: _$recordConvertAny(
                            $jsonValue['palette'],
                            ($jsonValue) => (
                              description: $jsonValue['description'] as String,
                              name: $jsonValue['name'] as String,
                            ),
                          ),
                          position: _$recordConvertAny(
                            $jsonValue['position'],
                            ($jsonValue) => (
                              col: ($jsonValue['col'] as num).toInt(),
                              row: ($jsonValue['row'] as num).toInt(),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
      infestationDate: $checkedConvert(
        'infestationDate',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'id': 'itemId', 'upgradeVersion': 'upgradeVer'},
);

Map<String, dynamic> _$ArsenalItemToJson(
  ArsenalItem instance,
) => <String, dynamic>{
  'itemId': instance.id,
  'uniqueName': instance.uniqueName,
  if (instance.name case final value?) 'name': value,
  if (instance.item?.toJson() case final value?) 'item': value,
  if (instance.nemesis case final value?) 'nemesis': value,
  'configs': instance.configs.map((e) => e.toJson()).toList(),
  if (instance.upgradeTypes case final value?) 'upgradeTypes': value,
  if (instance.upgradeFingerPrint case final value?)
    'upgradeFingerPrint': value,
  if (instance.features case final value?) 'features': value,
  'upgradeVer': instance.upgradeVersion,
  if (instance.xp case final value?) 'xp': value,
  if (instance.polarized case final value?) 'polarized': value,
  if (instance.polarities
          ?.map(
            (e) => <String, dynamic>{'polarity': e.polarity, 'slot': e.slot},
          )
          .toList()
      case final value?)
    'polarities': value,
  if (instance.focusLens case final value?) 'focusLens': value,
  if (instance.customizationSlots case final value?)
    'customizationSlots': value,
  if (instance.primaryColor == null
          ? null
          : <String, dynamic>{
            'hex': instance.primaryColor!.hex,
            'matches':
                instance.primaryColor!.matches
                    ?.map(
                      (e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      },
                    )
                    .toList(),
          }
      case final value?)
    'primaryColor': value,
  if (instance.sigilColor == null
          ? null
          : <String, dynamic>{
            'hex': instance.sigilColor!.hex,
            'matches':
                instance.sigilColor!.matches
                    ?.map(
                      (e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      },
                    )
                    .toList(),
          }
      case final value?)
    'sigilColor': value,
  if (instance.attachmentsColor == null
          ? null
          : <String, dynamic>{
            'hex': instance.attachmentsColor!.hex,
            'matches':
                instance.attachmentsColor!.matches
                    ?.map(
                      (e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      },
                    )
                    .toList(),
          }
      case final value?)
    'attachmentsColor': value,
  if (instance.syandanaColor == null
          ? null
          : <String, dynamic>{
            'hex': instance.syandanaColor!.hex,
            'matches':
                instance.syandanaColor!.matches
                    ?.map(
                      (e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      },
                    )
                    .toList(),
          }
      case final value?)
    'syandanaColor': value,
  if (instance.infestationDate?.toIso8601String() case final value?)
    'infestationDate': value,
};

$Rec _$recordConvertAny<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map);

$Rec? _$recordConvertAnyNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) => value == null ? null : convert(value as Map);
