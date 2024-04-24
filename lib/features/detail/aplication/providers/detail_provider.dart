import 'package:hp_api/features/detail/data/detail_repository.dart';
import 'package:hp_api/features/detail/domain/detail_usecases.dart';
import 'package:hp_api/core/domain/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_provider.g.dart';

@riverpod
Future<UserModel> detail(DetailRef ref, String id) async {
  final repository = ref.watch(detailRepositoryProvider(id));
  final detail = await GetDetail(repository: repository).execute();
  return detail;
}
