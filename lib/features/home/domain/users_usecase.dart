import 'package:hp_api/features/home/data/users_repository.dart';
import 'package:hp_api/features/home/data/user_model.dart';

class GetUsers {
  final UsersRepository repository;

  GetUsers({required this.repository});

  Future<List<UserModel>> execute() async {
    return repository.getUsers();
  }
}
