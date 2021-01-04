import '../abstract_groups_vm.dart';
import '../groups_model.dart';
import '../groups_repository_interface.dart';
import '../strategies/clubs.dart';

class ClubsViewModel extends GroupsViewModel {
  ClubsViewModel(IGroupsRepository repository)
      : super(GroupsModel(repository)) {
    repository.setFetchGroupsStrategy(Clubs());
    super.loadGroups();
  }
}
