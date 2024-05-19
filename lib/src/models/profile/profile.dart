import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/profile/profile_data.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile extends Equatable {
  const Profile({
    required this.data,
    required this.xpCacheExpiryDate,
    required this.ceremonyResetDate,
    required this.stats,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return _$ProfileFromJson(json);
  }

  /// Player data
  @JsonKey(name: 'profile')
  final ProfileData data;

  /// No idea
  final DateTime xpCacheExpiryDate;

  /// No idea
  final DateTime ceremonyResetDate;

  /// Player stats
  final dynamic stats;

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}
