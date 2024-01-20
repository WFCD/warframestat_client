import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'sentient_outposts.g.dart';

/// {@template sentient_outposts}
/// SentientOutposts description
/// {@endtemplate}
@JsonSerializable()
class SentientOutpost extends WorldstateObject {
  /// {@macro sentient_outposts}
  const SentientOutpost({
    required String super.id,
    required super.activation,
    required super.expiry,
    required this.mission,
    required this.active,
  });

  /// Creates a SentientOutposts from Json map
  factory SentientOutpost.fromJson(Map<String, dynamic> data) {
    return _$SentientOutpostFromJson(data);
  }

  @override
  String get id => super.id!;

  /// Mission node the outpost is located in.
  final Mission? mission;

  /// Whether or not the instance is active on the object's creation.
  final bool active;

  /// Creates a Json map from a SentientOutposts
  Map<String, dynamic> toJson() => _$SentientOutpostToJson(this);

  @override
  List<Object?> get props => super.props..addAll([mission, active]);
}
