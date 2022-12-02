import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/mission.dart';
import 'package:warframestat_client/src/objects.dart';

part 'sentient_outposts.g.dart';

/// {@template sentient_outposts}
/// SentientOutposts description
/// {@endtemplate}
@JsonSerializable()
class SentientOutpost extends EphemeralState {
  /// {@macro sentient_outposts}
  const SentientOutpost({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.mission,
    required this.active,
  });

  /// Creates a SentientOutposts from Json map
  factory SentientOutpost.fromJson(Map<String, dynamic> data) {
    return _$SentientOutpostFromJson(data);
  }

  /// Mission node the outpost is located in.
  final Mission mission;

  /// Whether or not the instance is active on the object's creation.
  final bool active;

  /// Creates a Json map from a SentientOutposts
  Map<String, dynamic> toJson() => _$SentientOutpostToJson(this);

  @override
  List<Object?> get props => super.props..addAll([mission, active]);
}
