import '../../domain/entities/match_detail_entity.dart';
import '../../domain/respositories/match_detail_repository.dart';
import '../datasources/match_detail_remote_datasource.dart';

class MatchDetailRepositoryImpl implements MatchDetailRepository {
  final MatchDetailRemoteDatasource remoteDatasource;

  MatchDetailRepositoryImpl(this.remoteDatasource);

  @override
  Future<MatchDetailEntity> getMatchDetail(int matchId) async {
    return await remoteDatasource.getMatchDetail(matchId);
  }
}