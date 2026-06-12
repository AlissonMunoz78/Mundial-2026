class MatchDetailEntity {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;
  final String status;
  final String? venue;
  final String? group;
  final String stage;
  final DateTime utcDate;
  final String? referee;

  const MatchDetailEntity({
    required this.id,
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore,
    this.awayScore,
    required this.status,
    this.venue,
    this.group,
    required this.stage,
    required this.utcDate,
    this.referee,
  });
}