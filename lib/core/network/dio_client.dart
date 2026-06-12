import 'package:dio/dio.dart';

class DioClient {
  static const String _baseUrl = 'https://api.football-data.org/v4';
  static const String _apiKey = '495a95ccf8104584854676f9392e5139';

  static Dio get instance {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'X-Auth-Token': _apiKey,
        },
      ),
    );
    return dio;
  }
}