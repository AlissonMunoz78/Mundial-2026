import '../../../../core/network/dio_client.dart';
import '../models/match_detail_model.dart';

abstract class MatchDetailRemoteDatasource {
  Future<MatchDetailModel> getMatchDetail(int matchId);
}

class MatchDetailRemoteDatasourceImpl implements MatchDetailRemoteDatasource {
  @override
  Future<MatchDetailModel> getMatchDetail(int matchId) async {
    final dio = DioClient.instance;
    final response = await dio.get('/matches/$matchId');
    return MatchDetailModel.fromJson(response.data as Map<String, dynamic>);
  }
}