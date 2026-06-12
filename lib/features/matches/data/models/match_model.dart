import '../../domain/entities/match_entity.dart';

class MatchModel extends MatchEntity {
  const MatchModel({
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
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    final score = json['score'] as Map<String, dynamic>?;
    final fullTime = score?['fullTime'] as Map<String, dynamic>?;
    final halfTime = score?['halfTime'] as Map<String, dynamic>?;

    // Usa fullTime si hay marcador, si no halfTime
    final homeScore = fullTime?['home'] as int? ?? halfTime?['home'] as int?;
    final awayScore = fullTime?['away'] as int? ?? halfTime?['away'] as int?;

    return MatchModel(
      id: json['id'] as int,
      homeTeam: (json['homeTeam'] as Map<String, dynamic>)['shortName'] as String? ??
          (json['homeTeam'] as Map<String, dynamic>)['name'] as String,
      awayTeam: (json['awayTeam'] as Map<String, dynamic>)['shortName'] as String? ??
          (json['awayTeam'] as Map<String, dynamic>)['name'] as String,
      homeScore: homeScore,
      awayScore: awayScore,
      status: json['status'] as String,
      venue: null, // football-data.org no siempre provee venue en listado
      group: json['group'] as String?,
      stage: json['stage'] as String,
      utcDate: DateTime.parse(json['utcDate'] as String),
    );
  }
}