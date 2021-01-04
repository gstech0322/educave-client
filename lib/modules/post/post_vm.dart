import '../../core/types/view_model.dart';
import 'features/post_feature.dart';
import 'post_model.dart';

class PostViewModel with ViewModel {
  final PostModel _model;

  PostViewModel(this._model);

  String get id => _model.id;
  String get username => _model.username;
  String get profilePic => _model.profilePic;
  String get postedIn => _model.postedIn;
  DateTime get dateTime => _model.dateTime;
  int get commentCount => _model.commentCount;
  int get likeCount => _model.likeCount;
  bool get liked => _model.liked;
  bool get saved => _model.saved;
  List<PostFeature> get features => _model.features;

  void like() {
    _model.like();
    notifyListeners();
  }

  void unlike() {
    _model.unlike();
    notifyListeners();
  }

  void save() {
    _model.save();
    notifyListeners();
  }

  void unsave() {
    _model.unsave();
    notifyListeners();
  }
}
