// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'necromech.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NecroMech _$NecroMechFromJson(Map json) => $checkedCreate(
      'NecroMech',
      json,
      ($checkedConvert) {
        final val = NecroMech(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int),
          buildTime: $checkedConvert('buildTime', (v) => v as int),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          imageName: $checkedConvert('imageName', (v) => v as String),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          power: $checkedConvert('power', (v) => v as int),
          abilities: $checkedConvert('abilities', (v) => v as List<dynamic>),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          masterReq: $checkedConvert('masterReq', (v) => v as int?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$NecroMechToJson(NecroMech instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'imageName': instance.imageName,
      'releaseDate': instance.releaseDate,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'wikiaUrl': instance.wikiaUrl,
      'masterReq': instance.masterReq,
      'buildPrice': instance.buildPrice,
      'buildQuantity': instance.buildQuantity,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'shield': instance.shield,
      'armor': instance.armor,
      'health': instance.health,
      'stamina': instance.stamina,
      'power': instance.power,
      'polarities': instance.polarities,
      'isPrime': instance.isPrime,
      'abilities': instance.abilities,
    };
