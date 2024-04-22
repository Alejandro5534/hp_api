import 'package:hp_api/core/data/dio_client.dart';
import 'package:hp_api/features/home/data/user_model.dart';
import 'package:hp_api/features/home/data/users_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_repository.g.dart';

@riverpod
UsersRepository userRepository(UserRepositoryRef ref) {
  final dio = ref.read(dioClientProvider);
  final api = UsersApi(dio: dio);

  return UsersRepository(api: api);
}

class UsersRepository {
  final UsersApi api;

  UsersRepository({required this.api});

  Future<List<UserModel>> getUsers() async {
    final users = await api.fetchUsers();
    final List<UserModel> usersList =
        users.map((user) => UserModel.fromMap(user)).toList();
    return usersList;
  }
}
