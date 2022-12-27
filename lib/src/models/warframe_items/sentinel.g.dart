// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentinel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentinel _$SentinelFromJson(Map json) => $checkedCreate(
      'Sentinel',
      json,
      ($checkedConvert) {
        final val = Sentinel(
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
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SentinelToJson(Sentinel instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'imageName': instance.imageName,
      'isPrime': instance.isPrime,
      'vaulted': instance.vaulted,
      'buildPrice': instance.buildPrice,
      'buildQuantity': instance.buildQuantity,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'armor': instance.armor,
      'health': instance.health,
      'shield': instance.shield,
      'stamina': instance.stamina,
    };
