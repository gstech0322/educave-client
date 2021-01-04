import '../group/mutual_group_entity.dart';
import 'user_entity.dart';
import 'user_repository_interface.dart';

class UserModel {
  final IUserRepository _repository;
  final UserEntity _entity;

  UserModel(this._repository, this._entity);

  String get profilePic => _entity.profilePic;
  String get username => _entity.username;
  List<MutualGroupEntity> get mutualGroups => _entity.mutualGroups;
  bool get isFollowing => _entity.isFollowing;

  void follow() async {
    if (!_entity.isFollowing) {
      _entity.follow();
      await _repository.follow();
    }
  }

  void unfollow() async {
    if (_entity.isFollowing) {
      _entity.unfollow();
      await _repository.unfollow();
    }
  }
}
