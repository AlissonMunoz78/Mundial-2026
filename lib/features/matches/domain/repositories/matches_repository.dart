//HU-01  HU-02
import '../entities/match_entity.dart';

abstract class MatchesRepository {
  Future<List<MatchEntity>> getMatchesByDate(DateTime date);
}