import 'package:dio/dio.dart';

class UsersApi {
  final Dio dio;

  UsersApi({required this.dio});

  Future<List> fetchUsers() async {
    final Response response = await dio.get('/characters');
    return response.data;
  }
}
