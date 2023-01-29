// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warframe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warframe _$WarframeFromJson(Map json) => $checkedCreate(
      'Warframe',
      json,
      ($checkedConvert) {
        final val = Warframe(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String),
          masterReq: $checkedConvert('masterReq', (v) => v as int?),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int? ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => v as int? ?? 1),
          buildTime: $checkedConvert('buildTime', (v) => v as int? ?? 0),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int? ?? 0),
          consumeOnBuild:
              $checkedConvert('consumeOnBuild', (v) => v as bool? ?? true),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          marketCost: $checkedConvert('marketCost', (v) => v as int?),
          bpCost: $checkedConvert('bpCost', (v) => v as int?),
          itemCount: $checkedConvert('itemCount', (v) => v as int?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
          power: $checkedConvert('power', (v) => v as int),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          abilities: $checkedConvert(
              'abilities',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Ability.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          aura: $checkedConvert('aura', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String),
          sprintSpeed: $checkedConvert('sprintSpeed', (v) => v as num),
          passiveDescription:
              $checkedConvert('passiveDescription', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$WarframeToJson(Warframe instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'imageName': instance.imageName,
      'releaseDate': instance.releaseDate,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'wikiaUrl': instance.wikiaUrl,
      'isPrime': instance.isPrime,
      'vaulted': instance.vaulted,
      'masterReq': instance.masterReq,
      'buildPrice': instance.buildPrice,
      'buildQuantity': instance.buildQuantity,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'marketCost': instance.marketCost,
      'bpCost': instance.bpCost,
      'itemCount': instance.itemCount,
      'shield': instance.shield,
      'armor': instance.armor,
      'health': instance.health,
      'stamina': instance.stamina,
      'power': instance.power,
      'polarities': instance.polarities,
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'aura': instance.aura,
      'sex': instance.sex,
      'sprintSpeed': instance.sprintSpeed,
      'passiveDescription': instance.passiveDescription,
    };
