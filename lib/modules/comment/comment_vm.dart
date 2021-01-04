import '../../core/types/view_model.dart';
import 'comment_model.dart';

class CommentViewModel with ViewModel {
  final CommentModel _model;

  CommentViewModel(this._model);

  String get username => _model.username;
  String get profilePic => _model.profilePic;
  String get content => _model.content;
  bool get liked => _model.liked;
  int get likeCount => _model.likeCount;
  String get timeSincePost => _model.timeSincePost;

  void like() {
    _model.like();
    notifyListeners();
  }

  void unlike() {
    _model.unlike();
    notifyListeners();
  }
}
