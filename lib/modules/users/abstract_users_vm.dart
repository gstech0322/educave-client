import 'package:flutter/foundation.dart';

import '../../core/types/view_model.dart';
import '../user/user_model.dart';
import 'users_model.dart';

class UsersViewModel with ViewModel {
  final UsersModel _model;

  UsersViewModel(this._model);

  List<UserModel>? get users => _model.users;
  bool get usersLoaded => _model.users != null;

  @protected
  Future<void> loadUsers() async {
    await _model.loadUsers();
    notifyListeners();
  }
}
