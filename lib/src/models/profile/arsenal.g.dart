// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arsenal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arsenal _$ArsenalFromJson(Map json) => $checkedCreate('Arsenal', json, (
  $checkedConvert,
) {
  final val = Arsenal(
    weaponSkins: $checkedConvert(
      'weaponSkins',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) =>
                    ArsenalSkin.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    suits: $checkedConvert(
      'suits',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) =>
                    ArsenalItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    primary: $checkedConvert(
      'primary',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    ArsenalItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    secondary: $checkedConvert(
      'secondary',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    ArsenalItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    melee: $checkedConvert(
      'melee',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    ArsenalItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    xpInfo: $checkedConvert(
      'xpInfo',
      (v) =>
          (v as List<dynamic>)
              .map((e) => XpItem.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ArsenalToJson(Arsenal instance) => <String, dynamic>{
  'weaponSkins': instance.weaponSkins.map((e) => e.toJson()).toList(),
  'suits': instance.suits.map((e) => e.toJson()).toList(),
  if (instance.primary?.map((e) => e.toJson()).toList() case final value?)
    'primary': value,
  if (instance.secondary?.map((e) => e.toJson()).toList() case final value?)
    'secondary': value,
  if (instance.melee?.map((e) => e.toJson()).toList() case final value?)
    'melee': value,
  'xpInfo': instance.xpInfo.map((e) => e.toJson()).toList(),
};
