import '../../../../core/network/dio_client.dart';
import '../models/match_model.dart';

//Llama a GET /competitions/WC/matches?dateFrom=&dateTo=
abstract class MatchesRemoteDatasource {
  Future<List<MatchModel>> getMatchesByDate(DateTime date);
}

class MatchesRemoteDatasourceImpl implements MatchesRemoteDatasource {
  @override
  Future<List<MatchModel>> getMatchesByDate(DateTime date) async {
    final dio = DioClient.instance;
    final dateStr =
        '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

    final response = await dio.get(
      '/competitions/WC/matches',
      queryParameters: {
        'dateFrom': dateStr,
        'dateTo': dateStr,
      },
    );

    final matches = response.data['matches'] as List<dynamic>;
    return matches
        .map((m) => MatchModel.fromJson(m as Map<String, dynamic>))
        .toList();
  }
}