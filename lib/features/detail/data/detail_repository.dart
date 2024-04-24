import 'package:hp_api/core/data/dio_client.dart';
import 'package:hp_api/features/detail/data/detail_api.dart';
import 'package:hp_api/core/domain/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_repository.g.dart';

@riverpod
DetailRepository detailRepository(DetailRepositoryRef ref, String id) {
  final dio = ref.watch(dioClientProvider);
  final api = DetailApi(id: id, dio: dio);
  return DetailRepository(api: api);
}

class DetailRepository {
  final DetailApi api;
  DetailRepository({required this.api});
  Future<UserModel> getDetail() async {
    final List dataResponse = await api.getDetail();
    final UserModel user =
        dataResponse.map((user) => UserModel.fromMap(user)).toList()[0];

    return user;
  }
}
