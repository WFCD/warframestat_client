import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'market_info.g.dart';

/// {@template market_info}
/// MarketInfo description
/// {@endtemplate}
@JsonSerializable()
class MarketInfo extends Equatable {
  /// {@macro market_info}
  const MarketInfo({
    required this.id,
    required this.urlName,
  });

  /// Creates a MarketInfo from Json map
  factory MarketInfo.fromJson(Map<String, dynamic> data) =>
      _$MarketInfoFromJson(data);

  /// Market ID.
  final String id;

  /// Market url name.
  final String urlName;

  @override
  List<Object?> get props => [id, urlName];

  /// Creates a Json map from a MarketInfo
  Map<String, dynamic> toJson() => _$MarketInfoToJson(this);
}
