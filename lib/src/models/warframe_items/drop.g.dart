// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'drop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drop _$DropFromJson(Map json) =>
    $checkedCreate('Drop', json, ($checkedConvert) {
      final val = Drop(
        location: $checkedConvert('location', (v) => v as String),
        type: $checkedConvert('type', (v) => v as String),
        uniqueName: $checkedConvert('uniqueName', (v) => v as String?),
        rarity: $checkedConvert(
          'rarity',
          (v) => $enumDecodeNullable(_$RarityEnumMap, v),
        ),
        chance: $checkedConvert('chance', (v) => v as num?),
        rotation: $checkedConvert('rotation', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$DropToJson(Drop instance) => <String, dynamic>{
  'uniqueName': ?instance.uniqueName,
  'location': instance.location,
  'type': instance.type,
  'rarity': ?_$RarityEnumMap[instance.rarity],
  'chance': ?instance.chance,
  'rotation': ?instance.rotation,
};

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};
