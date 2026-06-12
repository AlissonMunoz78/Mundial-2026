import '../../domain/entities/match_entity.dart';
import '../../domain/repositories/matches_repository.dart';
import '../datasources/matches_remote_datasource.dart';

class MatchesRepositoryImpl implements MatchesRepository {
  final MatchesRemoteDatasource remoteDatasource;

  MatchesRepositoryImpl(this.remoteDatasource);

  @override
  Future<List<MatchEntity>> getMatchesByDate(DateTime date) async {
    return await remoteDatasource.getMatchesByDate(date);
  }
}