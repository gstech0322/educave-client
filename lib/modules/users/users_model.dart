import '../user/user_model.dart';
import 'users_repository_interface.dart';

class UsersModel {
  final IUsersRepository _repository;
  List<UserModel>? _users;

  UsersModel(this._repository);

  List<UserModel>? get users => _users;

  Future<void> loadUsers() async {
    _users = await _repository.users();
  }
}
