import '../../domain/entities/match_detail_entity.dart';

class MatchDetailModel extends MatchDetailEntity {
  const MatchDetailModel({
    required super.id,
    required super.homeTeam,
    required super.awayTeam,
    super.homeScore,
    super.awayScore,
    required super.status,
    super.venue,
    super.group,
    required super.stage,
    required super.utcDate,
    super.referee,
  });

  factory MatchDetailModel.fromJson(Map<String, dynamic> json) {
    final score = json['score'] as Map<String, dynamic>?;
    final fullTime = score?['fullTime'] as Map<String, dynamic>?;
    final halfTime = score?['halfTime'] as Map<String, dynamic>?;
    final homeScore = fullTime?['home'] as int? ?? halfTime?['home'] as int?;
    final awayScore = fullTime?['away'] as int? ?? halfTime?['away'] as int?;

    final refereesList = json['referees'] as List<dynamic>?;
    final referee = refereesList != null && refereesList.isNotEmpty
        ? (refereesList.first as Map<String, dynamic>)['name'] as String?
        : null;

    return MatchDetailModel(
      id: json['id'] as int,
      homeTeam: (json['homeTeam'] as Map<String, dynamic>)['name'] as String,
      awayTeam: (json['awayTeam'] as Map<String, dynamic>)['name'] as String,
      homeScore: homeScore,
      awayScore: awayScore,
      status: json['status'] as String,
      venue: json['venue'] as String?,
      group: json['group'] as String?,
      stage: json['stage'] as String,
      utcDate: DateTime.parse(json['utcDate'] as String),
      referee: referee,
    );
  }
}