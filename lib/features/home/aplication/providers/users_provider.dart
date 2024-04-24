import 'package:hp_api/core/domain/user_model.dart';
import 'package:hp_api/features/home/data/users_repository.dart';
import 'package:hp_api/features/home/domain/users_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_provider.g.dart';

@riverpod
class UserFetch extends _$UserFetch {
  @override
  Future<List<UserModel>> build() async {
    final repository = ref.watch(userRepositoryProvider);
    final getUsers = GetUsers(repository: repository);
    return getUsers.execute();
  }
}
