// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drop _$DropFromJson(Map json) => $checkedCreate(
      'Drop',
      json,
      ($checkedConvert) {
        final val = Drop(
          location: $checkedConvert('location', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          rarity: $checkedConvert(
              'rarity', (v) => $enumDecodeNullable(_$RarityEnumMap, v)),
          chance: $checkedConvert('chance', (v) => v as num?),
          rotation: $checkedConvert('rotation', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DropToJson(Drop instance) => <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'rarity': _$RarityEnumMap[instance.rarity],
      'chance': instance.chance,
      'rotation': instance.rotation,
    };

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.uncommon: 'uncommon',
  Rarity.rare: 'rare',
  Rarity.legendary: 'legendary',
};
