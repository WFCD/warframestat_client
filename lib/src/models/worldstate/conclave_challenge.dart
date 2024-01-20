import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'conclave_challenge.g.dart';

/// {@template conclave_challenge}
/// Conclave challenge instance.
/// {@endtemplate}
@JsonSerializable()
class ConclaveChallenge extends WorldstateObject {
  /// {@macro conclave_challenge}
  const ConclaveChallenge({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.mode,
    required this.amount,
    required this.expired,
    required this.daily,
    required this.description,
    required this.category,
    required this.rootChallenge,
  });

  /// Creates a ConclaveChallenge from Json map
  factory ConclaveChallenge.fromJson(Map<String, dynamic> json) =>
      _$ConclaveChallengeFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// The PVP mode that the challenge must be completed in.
  final String mode;

  /// The number of times the challenge needs to be completed.
  final int amount;

  /// If the challenge has expired at the time of the object's creation.
  final bool expired;

  /// If the challenge is a daily challenge.
  final bool daily;

  /// Challenge description.
  final String description;

  /// Challenge category i.e. daily, weekly.
  final String category;

  /// Whether or not this is a root challenge.
  final bool rootChallenge;

  /// Creates a Json map from a ConclaveChallenge
  Map<String, dynamic> toJson() => _$ConclaveChallengeToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      mode,
      amount,
      expired,
      daily,
      description,
      category,
      rootChallenge,
    ]);
}
