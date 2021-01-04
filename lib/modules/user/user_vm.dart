import '../../core/types/view_model.dart';
import '../group/mutual_group_entity.dart';
import 'user_model.dart';

class UserViewModel with ViewModel {
  final UserModel _model;

  UserViewModel(this._model);

  String get username => _model.username;
  String get profilePic => _model.profilePic;
  List<MutualGroupEntity> get mutualGroups => _model.mutualGroups;
  bool get isFollowing => _model.isFollowing;

  void follow() {
    _model.follow();
    notifyListeners();
  }

  void unfollow() {
    _model.unfollow();
    notifyListeners();
  }
}
