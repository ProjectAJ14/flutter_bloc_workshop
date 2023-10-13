import 'package:dio/dio.dart';

class ApiResponse {
  final String message;

  final String error;

  final int statusCode;

  final dynamic data;

  ApiResponse({
    this.message = "",
    this.error = "",
    this.statusCode = 0,
    this.data = const {},
  });

  factory ApiResponse.error(String error, {int statusCode = 0}) {
    return ApiResponse(
      error: error,
      statusCode: statusCode,
    );
  }

  factory ApiResponse.fromDioResponse(Response response) {
    return ApiResponse(
      statusCode: response.statusCode ?? 0,
      data: response.data,
      message: response.statusMessage ?? "",
    );
  }
}
