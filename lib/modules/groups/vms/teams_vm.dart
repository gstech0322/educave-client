import '../abstract_groups_vm.dart';
import '../groups_model.dart';
import '../groups_repository.dart';
import '../strategies/teams.dart';

class TeamsViewModel extends GroupsViewModel {
  TeamsViewModel(GroupsRepository repository) : super(GroupsModel(repository)) {
    repository.setFetchGroupsStrategy(Teams());
    super.loadGroups();
  }
}
