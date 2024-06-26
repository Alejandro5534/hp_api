import 'package:hp_api/features/detail/data/detail_repository.dart';
import 'package:hp_api/core/domain/user_model.dart';

class GetDetail {
  final DetailRepository repository;

  GetDetail({required this.repository});

  Future<UserModel> execute() async {
    return repository.getDetail();
  }
}
