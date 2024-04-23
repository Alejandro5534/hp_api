import 'package:dio/dio.dart';

class DetailApi {
  final Dio dio;
  final String id;
  DetailApi({required this.id, required this.dio});

  Future<List> getDetail() async {
    final responseDetail = await dio.get('/character/$id');
    return responseDetail.data;
  }
}
