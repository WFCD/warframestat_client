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
          item:
              $checkedConvert('item', (v) => toItem(v as Map<String, dynamic>)),
          nemesis: $checkedConvert('nemesis', (v) => v as String?),
          configs: $checkedConvert(
              'configs',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ItemConfig.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          upgradeTypes: $checkedConvert('upgradeTypes', (v) => v as String?),
          upgradeFingerPrint: $checkedConvert(
              'upgradeFingerPrint',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
          features: $checkedConvert('features', (v) => v as int?),
          upgradeVersion: $checkedConvert('upgradeVer', (v) => v as int),
          xp: $checkedConvert('xp', (v) => v as int),
          polarized: $checkedConvert('polarized', (v) => v as int?),
          polarities: $checkedConvert(
              'polarities',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          polarity: $jsonValue['polarity'] as String,
                          slot: $jsonValue['slot'] as int,
                        ),
                      ))
                  .toList()),
          focusLens: $checkedConvert('focusLens', (v) => v as String?),
          customizationSlots:
              $checkedConvert('customizationSlots', (v) => v as int?),
          primaryColor: $checkedConvert(
              'primaryColor',
              (v) => _$recordConvertAnyNullable(
                    v,
                    ($jsonValue) => (
                      hex: $jsonValue['hex'] as String?,
                      matches: ($jsonValue['matches'] as List<dynamic>?)
                          ?.map((e) => _$recordConvertAny(
                                e,
                                ($jsonValue) => (
                                  palette: _$recordConvertAny(
                                    $jsonValue['palette'],
                                    ($jsonValue) => (
                                      description:
                                          $jsonValue['description'] as String,
                                      name: $jsonValue['name'] as String,
                                    ),
                                  ),
                                  position: _$recordConvertAny(
                                    $jsonValue['position'],
                                    ($jsonValue) => (
                                      col: $jsonValue['col'] as int,
                                      row: $jsonValue['row'] as int,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          sigilColor: $checkedConvert(
              'sigilColor',
              (v) => _$recordConvertAnyNullable(
                    v,
                    ($jsonValue) => (
                      hex: $jsonValue['hex'] as String?,
                      matches: ($jsonValue['matches'] as List<dynamic>?)
                          ?.map((e) => _$recordConvertAny(
                                e,
                                ($jsonValue) => (
                                  palette: _$recordConvertAny(
                                    $jsonValue['palette'],
                                    ($jsonValue) => (
                                      description:
                                          $jsonValue['description'] as String,
                                      name: $jsonValue['name'] as String,
                                    ),
                                  ),
                                  position: _$recordConvertAny(
                                    $jsonValue['position'],
                                    ($jsonValue) => (
                                      col: $jsonValue['col'] as int,
                                      row: $jsonValue['row'] as int,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          attachmentsColor: $checkedConvert(
              'attachmentsColor',
              (v) => _$recordConvertAnyNullable(
                    v,
                    ($jsonValue) => (
                      hex: $jsonValue['hex'] as String?,
                      matches: ($jsonValue['matches'] as List<dynamic>?)
                          ?.map((e) => _$recordConvertAny(
                                e,
                                ($jsonValue) => (
                                  palette: _$recordConvertAny(
                                    $jsonValue['palette'],
                                    ($jsonValue) => (
                                      description:
                                          $jsonValue['description'] as String,
                                      name: $jsonValue['name'] as String,
                                    ),
                                  ),
                                  position: _$recordConvertAny(
                                    $jsonValue['position'],
                                    ($jsonValue) => (
                                      col: $jsonValue['col'] as int,
                                      row: $jsonValue['row'] as int,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          syandanaColor: $checkedConvert(
              'syandanaColor',
              (v) => _$recordConvertAnyNullable(
                    v,
                    ($jsonValue) => (
                      hex: $jsonValue['hex'] as String?,
                      matches: ($jsonValue['matches'] as List<dynamic>?)
                          ?.map((e) => _$recordConvertAny(
                                e,
                                ($jsonValue) => (
                                  palette: _$recordConvertAny(
                                    $jsonValue['palette'],
                                    ($jsonValue) => (
                                      description:
                                          $jsonValue['description'] as String,
                                      name: $jsonValue['name'] as String,
                                    ),
                                  ),
                                  position: _$recordConvertAny(
                                    $jsonValue['position'],
                                    ($jsonValue) => (
                                      col: $jsonValue['col'] as int,
                                      row: $jsonValue['row'] as int,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          infestationDate: $checkedConvert('infestationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'itemId', 'upgradeVersion': 'upgradeVer'},
    );

Map<String, dynamic> _$ArsenalItemToJson(ArsenalItem instance) {
  final val = <String, dynamic>{
    'itemId': instance.id,
    'uniqueName': instance.uniqueName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('item', instance.item?.toJson());
  writeNotNull('nemesis', instance.nemesis);
  val['configs'] = instance.configs.map((e) => e.toJson()).toList();
  writeNotNull('upgradeTypes', instance.upgradeTypes);
  writeNotNull('upgradeFingerPrint', instance.upgradeFingerPrint);
  writeNotNull('features', instance.features);
  val['upgradeVer'] = instance.upgradeVersion;
  val['xp'] = instance.xp;
  writeNotNull('polarized', instance.polarized);
  writeNotNull(
      'polarities',
      instance.polarities
          ?.map((e) => {
                'polarity': e.polarity,
                'slot': e.slot,
              })
          .toList());
  writeNotNull('focusLens', instance.focusLens);
  writeNotNull('customizationSlots', instance.customizationSlots);
  writeNotNull(
      'primaryColor',
      instance.primaryColor == null
          ? null
          : {
              'hex': instance.primaryColor!.hex,
              'matches': instance.primaryColor!.matches
                  ?.map((e) => {
                        'palette': {
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': {
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'sigilColor',
      instance.sigilColor == null
          ? null
          : {
              'hex': instance.sigilColor!.hex,
              'matches': instance.sigilColor!.matches
                  ?.map((e) => {
                        'palette': {
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': {
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'attachmentsColor',
      instance.attachmentsColor == null
          ? null
          : {
              'hex': instance.attachmentsColor!.hex,
              'matches': instance.attachmentsColor!.matches
                  ?.map((e) => {
                        'palette': {
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': {
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'syandanaColor',
      instance.syandanaColor == null
          ? null
          : {
              'hex': instance.syandanaColor!.hex,
              'matches': instance.syandanaColor!.matches
                  ?.map((e) => {
                        'palette': {
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': {
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull('infestationDate', instance.infestationDate?.toIso8601String());
  return val;
}

$Rec _$recordConvertAny<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map);

$Rec? _$recordConvertAnyNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map);