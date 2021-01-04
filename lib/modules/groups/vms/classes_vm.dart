import '../../group/group_repository_interface.dart';
import '../abstract_groups_vm.dart';
import '../groups_model.dart';
import '../groups_repository_interface.dart';
import '../strategies/classes.dart';

class ClassesViewModel extends GroupsViewModel {
  ClassesViewModel(IGroupsRepository repository)
      : super(GroupsModel(repository)) {
    repository.setFetchGroupsStrategy(Classes());
    super.loadGroups();
  }
}
