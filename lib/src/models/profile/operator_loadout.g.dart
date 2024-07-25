// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_loadout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorLoadout _$OperatorLoadoutFromJson(Map json) => $checkedCreate(
      'OperatorLoadout',
      json,
      ($checkedConvert) {
        final val = OperatorLoadout(
          skins: $checkedConvert(
              'skins',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ArsenalSkin.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          operatorAmp: $checkedConvert('operatorAmp', (v) => v as String?),
          upgrades: $checkedConvert('upgrades',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          eyeColor: $checkedConvert(
              'eyeColor',
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          facial: $checkedConvert(
              'facial',
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
          cloth: $checkedConvert(
              'cloth',
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
                                      col: ($jsonValue['col'] as num).toInt(),
                                      row: ($jsonValue['row'] as num).toInt(),
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

Map<String, dynamic> _$OperatorLoadoutToJson(OperatorLoadout instance) {
  final val = <String, dynamic>{
    'skins': instance.skins.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operatorAmp', instance.operatorAmp);
  val['upgrades'] = instance.upgrades;
  writeNotNull(
      'primaryColor',
      instance.primaryColor == null
          ? null
          : <String, dynamic>{
              'hex': instance.primaryColor!.hex,
              'matches': instance.primaryColor!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
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
          : <String, dynamic>{
              'hex': instance.sigilColor!.hex,
              'matches': instance.sigilColor!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
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
          : <String, dynamic>{
              'hex': instance.attachmentsColor!.hex,
              'matches': instance.attachmentsColor!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
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
          : <String, dynamic>{
              'hex': instance.syandanaColor!.hex,
              'matches': instance.syandanaColor!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'eyeColor',
      instance.eyeColor == null
          ? null
          : <String, dynamic>{
              'hex': instance.eyeColor!.hex,
              'matches': instance.eyeColor!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'facial',
      instance.facial == null
          ? null
          : <String, dynamic>{
              'hex': instance.facial!.hex,
              'matches': instance.facial!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
                          'col': e.position.col,
                          'row': e.position.row,
                        },
                      })
                  .toList(),
            });
  writeNotNull(
      'cloth',
      instance.cloth == null
          ? null
          : <String, dynamic>{
              'hex': instance.cloth!.hex,
              'matches': instance.cloth!.matches
                  ?.map((e) => <String, dynamic>{
                        'palette': <String, dynamic>{
                          'description': e.palette.description,
                          'name': e.palette.name,
                        },
                        'position': <String, dynamic>{
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
