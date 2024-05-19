import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'intrinsics.g.dart';

@JsonSerializable()
class Intrinsics extends Equatable {
  const Intrinsics({
    required this.space,
    required this.engineering,
    required this.gunnery,
    required this.piloting,
    required this.tactical,
    required this.command,
    required this.drifter,
    required this.riding,
    required this.combat,
    required this.opportunity,
    required this.endurance,
  });

  /// Get [Intrinsics] from json
  factory Intrinsics.fromJson(Map<String, dynamic> json) {
    return _$IntrinsicsFromJson(json);
  }

  ///
  final int space;

  /// Railjack engineering rank
  final int engineering;

  /// Railjack gunnery rank
  final int gunnery;

  /// Railjack piloting rank
  final int piloting;

  /// Railjack tactical rank
  final int tactical;

  /// Railjack command rank
  final int command;

  ///
  final int drifter;

  /// Drifter riding rank
  final int riding;

  /// Drifter combat rank
  final int combat;

  /// Drifter opportunity rank
  final int opportunity;

  /// Drifter endurance rank
  final int endurance;

  /// Creates a json map from [Intrinsics]
  Map<String, dynamic> toJson() => _$IntrinsicsToJson(this);

  @override
  List<Object?> get props {
    return [
      space,
      engineering,
      gunnery,
      piloting,
      tactical,
      command,
      drifter,
      riding,
      combat,
      opportunity,
      endurance,
    ];
  }
}
