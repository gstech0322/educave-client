import '../../core/types/view_model.dart';
import 'group_model.dart';

class GroupViewModel with ViewModel {
  final GroupModel _model;

  GroupViewModel(this._model);

  String get id => _model.id;
  String get groupPic => _model.groupPic;
  String get backgroundPic => _model.backgroundPic;
  String get name => _model.name;
  String get summary => _model.summary;
  int get numMembers => _model.numMembers;
  int get numPosts => _model.numPosts;
  bool get joined => _model.joined;

  void join() async {
    _model.join();
    notifyListeners();
  }

  void unjoin() {
    _model.leave();
    notifyListeners();
  }
}
