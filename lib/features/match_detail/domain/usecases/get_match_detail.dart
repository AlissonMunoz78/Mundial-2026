import '../entities/match_detail_entity.dart';
import '../respositories/match_detail_repository.dart';

class GetMatchDetail {
  final MatchDetailRepository repository;

  GetMatchDetail(this.repository);

  Future<MatchDetailEntity> call(int matchId) {
    return repository.getMatchDetail(matchId);
  }
}