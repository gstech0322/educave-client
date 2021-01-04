import 'group_entity.dart';
import 'group_repository_interface.dart';

class GroupModel {
  final GroupEntity _entity;
  final IGroupRepository _repository;

  GroupModel(this._repository, this._entity);

  String get id => _entity.id;
  String get name => _entity.name;
  String get summary => _entity.summary;
  String get groupPic => _entity.groupPic;
  String get backgroundPic => _entity.backgroundPic;
  bool get joined => _entity.joined;
  int get numMembers => _entity.numMembers;
  int get numPosts => _entity.numPosts;

  void join() async {
    if (!_entity.joined) {
      _entity.join();
      await _repository.join();
    }
  }

  void leave() async {
    if (_entity.joined) {
      _entity.leave();
      await _repository.leave();
    }
  }
}
