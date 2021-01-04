import '../groups_model.dart';
import '../groups_repository_interface.dart';
import '../abstract_groups_vm.dart';
import '../strategies/top_groups.dart';

class TopGroupsViewModel extends GroupsViewModel {
  TopGroupsViewModel(IGroupsRepository repository)
      : super(GroupsModel(repository)) {
    repository.setFetchGroupsStrategy(TopGroups());
    super.loadGroups();
  }
}
