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

Map<String, dynamic> _$DropToJson(Drop instance) {
  final val = <String, dynamic>{
    'location': instance.location,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rarity', _$RarityEnumMap[instance.rarity]);
  writeNotNull('chance', instance.chance);
  writeNotNull('rotation', instance.rotation);
  return val;
}

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};
