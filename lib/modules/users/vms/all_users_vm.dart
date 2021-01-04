import '../strategies/all.dart';
import '../users_model.dart';
import '../users_repository_interface.dart';
import '../abstract_users_vm.dart';

class AllUsersViewModel extends UsersViewModel {
  AllUsersViewModel(IUsersRepository repository)
      : super(UsersModel(repository)) {
    repository.setFetchUsersStrategy(AllUsers());
    super.loadUsers();
  }
}
