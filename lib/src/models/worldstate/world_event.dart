import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'world_event.g.dart';

/// {@template event}
/// Event description
/// {@endtemplate}
@JsonSerializable()
class WorldEvent extends WorldstateObject {
  /// {@macro event}
  const WorldEvent({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.previousId,
    required this.startString,
    required this.active,
    required this.maximumScore,
    required this.currentScore,
    required this.smallInterval,
    required this.largeInterval,
    required this.faction,
    required this.description,
    required this.tooltip,
    required this.node,
    required this.concurrentNodes,
    required this.victimNode,
    required this.scoreLocTag,
    required this.rewards,
    required this.expired,
    required this.health,
    required this.affiliatedWith,
    required this.jobs,
    required this.previousJobs,
    required this.interimSteps,
    required this.progressSteps,
    required this.progressTotal,
    required this.showTotalAtEndOfMission,
    required this.isPersonal,
    required this.isCommunity,
    required this.regionDrops,
    required this.archwingDrops,
    required this.metadata,
    required this.completionBonuses,
    required this.scoreVar,
    required this.asString,
    required this.altExpiry,
    required this.altActivation,
    required this.nextAlt,
    required this.tag,
  });

  /// Creates a Event from Json map
  factory WorldEvent.fromJson(Map<String, dynamic> json) =>
      _$WorldEventFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// Previous ID
  @JsonKey(includeIfNull: false)
  final String? previousId;

  /// Activation as a string.
  final String startString;

  /// Whether the event is still active or not.
  final bool active;

  /// Maximum global score needed for the event to be completed.
  final int? maximumScore;

  /// The current global score.
  final int? currentScore;

  /// The first intermediate score goal.
  final int? smallInterval;

  /// The second intermediate score goal.
  final int? largeInterval;

  /// The faction that the players must fight in the event.
  @JsonKey(includeIfNull: false)
  final String? faction;

  /// A description of the event.
  final String description;

  /// A tooltip of the event.
  final String? tooltip;

  /// The node the event takes place in.
  @JsonKey(includeIfNull: false)
  final String? node;

  /// Other nodes that are part of the event.
  final List<String> concurrentNodes;

  /// The victim node.
  @JsonKey(includeIfNull: false)
  final String? victimNode;

  /// The score description.
  @JsonKey(includeIfNull: false)
  final String? scoreLocTag;

  /// Reward for completing this event.
  final List<Reward> rewards;

  /// Whether or not this is expired (at the time of the object creation).
  final bool expired;

  /// A description for health
  @JsonKey(includeIfNull: false)
  final num? health;

  /// A description for affiliatedWith
  @JsonKey(includeIfNull: false)
  final String? affiliatedWith;

  /// A description for jobs
  @JsonKey(includeIfNull: false)
  final List<SyndicateJob>? jobs;

  /// Previous bounties
  @JsonKey(includeIfNull: false)
  final List<SyndicateJob>? previousJobs;

  /// A description for interimSteps
  final List<InterimStep>? interimSteps;

  /// A description for progressSteps
  final List<ProgressStep> progressSteps;

  /// A description for progressTotal
  @JsonKey(includeIfNull: false)
  final int? progressTotal;

  /// A description for showTotalAtEndOfMission
  @JsonKey(includeIfNull: false)
  final bool? showTotalAtEndOfMission;

  /// A description for isPersonal
  @JsonKey(includeIfNull: false)
  final bool? isPersonal;

  /// A description for isCommunity
  @JsonKey(includeIfNull: false)
  final bool? isCommunity;

  /// A description for regionDrops
  final List<String>? regionDrops;

  /// A description for archwingDrops
  final List<String>? archwingDrops;

  /// A description for metadata
  final Map<String, dynamic>? metadata;

  /// A description for completionBonuses
  final List<int>? completionBonuses;

  /// A description for scoreVar
  @JsonKey(includeIfNull: false)
  final String? scoreVar;

  /// String representation of this [WorldEvent].
  final String asString;

  /// A description for altExpiry
  final DateTime altExpiry;

  /// A description for altActivation
  final DateTime altActivation;

  /// A description for nextAlt
  final NextAlt nextAlt;

  /// A unique identifier or category label for the event, used to group or
  /// filter related events.
  final String tag;

  /// Returns the event health using either [health] or
  /// [currentScore] and [maximumScore].
  ///
  /// If the event has no health progress method will always return null.
  double? eventHealth() {
    if (health != null) return health!.toDouble();

    if (currentScore != null && maximumScore != null) {
      return (100 - currentScore!) / (maximumScore! * 100);
    }

    return null;
  }

  /// Returns a list of all rewards from both [rewards] and [interimSteps].
  List<Reward> eventRewards() {
    final rewards = List<Reward>.from(this.rewards);

    return rewards
      ..addAll(interimSteps?.map<Reward>((i) => i.reward) ?? [])
      ..removeWhere((r) => r.itemString.isEmpty);
  }

  /// Creates a Json map from a Event
  Map<String, dynamic> toJson() => _$WorldEventToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        previousId,
        startString,
        active,
        maximumScore,
        currentScore,
        smallInterval,
        largeInterval,
        faction,
        description,
        tooltip,
        node,
        concurrentNodes,
        victimNode,
        scoreLocTag,
        rewards,
        expired,
        health,
        affiliatedWith,
        jobs,
        previousJobs,
        interimSteps,
        progressTotal,
        showTotalAtEndOfMission,
        isPersonal,
        isCommunity,
        regionDrops,
        archwingDrops,
        metadata,
        completionBonuses,
        scoreVar,
        asString,
        altExpiry,
        altActivation,
        nextAlt,
      ]);
  }
}

/// {@template interimstep}
/// A [WorldEvent] step.
/// {@endtemplate}
@JsonSerializable()
class InterimStep extends Equatable {
  /// {@macro interimstep}
  const InterimStep({
    required this.goal,
    required this.reward,
    required this.message,
  });

  /// Creates an InterimStep from a json map.
  factory InterimStep.fromJson(Map<String, dynamic> json) {
    return _$InterimStepFromJson(json);
  }

  /// Goal of this step.
  final int goal;

  /// Reward for completing the step.
  final Reward reward;

  /// Event message.
  final Message message;

  /// Creates a json map from InterimStep.
  Map<String, dynamic> toJson() => _$InterimStepToJson(this);

  @override
  List<Object?> get props => [goal, reward];
}

/// {@template message}
/// Don't know yet.
/// {@endtemplate}
@JsonSerializable()
class Message extends Equatable {
  /// {@macro interimstep}
  const Message({
    required this.sender,
    required this.subject,
    required this.message,
    required this.senderIcon,
    required this.attachments,
  });

  /// Creates a [Message] from a JSON map.
  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  ///
  @JsonKey(includeIfNull: false)
  final String? sender;

  ///
  @JsonKey(includeIfNull: false)
  final String? subject;

  ///
  @JsonKey(includeIfNull: false)
  final String? message;

  ///
  @JsonKey(includeIfNull: false)
  final String? senderIcon;

  ///
  @JsonKey(includeIfNull: false)
  final String? attachments;

  /// Creates a JSON map from [Message].
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  List<Object?> get props =>
      [sender, subject, message, senderIcon, attachments];
}

/// {@template progressstep}
/// A step needed to progress in the given event.
/// {@endtemplate}
@JsonSerializable()
class ProgressStep extends Equatable {
  /// {@macro progressstep}
  const ProgressStep({required this.type, required this.progressAmt});

  /// Creates [ProgressStep] from a json map.
  factory ProgressStep.fromJson(Map<String, dynamic> json) {
    return _$ProgressStepFromJson(json);
  }

  /// The type of step.
  final String type;

  /// The ammount needed to progress.
  final int progressAmt;

  /// Creates a json map from [ProgressStep].
  Map<String, dynamic> toJson() => _$ProgressStepToJson(this);

  @override
  List<Object> get props => [type, progressAmt];
}

/// {@template nextalt}
/// {@endtemplate}
@JsonSerializable()
class NextAlt extends Equatable {
  /// {@macro nextalt}
  const NextAlt({required this.activation, required this.expiry});

  /// Creates [NextAlt] from json map.
  factory NextAlt.fromJson(Map<String, dynamic> json) =>
      _$NextAltFromJson(json);

  /// The next alt activation time.
  final DateTime activation;

  /// The next alt expiration time.
  final DateTime expiry;

  /// Creates a json map from [NextAlt]
  Map<String, dynamic> toJson() => _$NextAltToJson(this);

  @override
  List<Object?> get props => [activation, expiry];
}
