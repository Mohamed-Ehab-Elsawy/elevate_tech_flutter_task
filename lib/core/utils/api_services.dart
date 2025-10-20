import 'package:dio/dio.dart';

class ApiServices {
  static final Dio _dio = Dio();
  static const _baseUrl = 'https://fakestoreapi.com/';

  static Future<dynamic> get({required String endpoint}) async =>
      _dio.get("$_baseUrl$endpoint").then((response) => response.data);
}