///
String formatDuration(Duration duration) {
  final days = duration.inDays;
  final hours = duration.inHours.remainder(24);
  final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
  final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');

  final is24hrs = duration < const Duration(days: 1);

  return '${!is24hrs ? '${days}d' : ''} $hours:$minutes:$seconds';
}
