import '../../models/api_response.dart';

abstract class ApiService {
  void init({required String baseUrl});

  Future<ApiResponse> get({required String path, Map<String, dynamic>? query});
}
