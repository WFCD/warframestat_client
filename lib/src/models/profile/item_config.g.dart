// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemConfig _$ItemConfigFromJson(Map json) => $checkedCreate(
      'ItemConfig',
      json,
      ($checkedConvert) {
        final val = ItemConfig(
          skins: $checkedConvert(
              'skins',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ArsenalSkin.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          conclaveUpgrades: $checkedConvert('conclaveUpgrades',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$ItemConfigToJson(ItemConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skins', instance.skins?.map((e) => e.toJson()).toList());
  writeNotNull('conclaveUpgrades', instance.conclaveUpgrades);
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
