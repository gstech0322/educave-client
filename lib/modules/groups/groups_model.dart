import '../group/group_model.dart';
import 'groups_repository_interface.dart';

class GroupsModel {
  final IGroupsRepository _repository;
  List<GroupModel>? _groups;

  GroupsModel(this._repository);

  List<GroupModel>? get groups => _groups;

  Future<void> load() async {
    _groups = await _repository.groups();
  }
}
