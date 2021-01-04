import 'features/post_feature.dart';
import 'post_entity.dart';
import 'post_repository_interface.dart';

class PostModel {
  final IPostRepository _repository;
  final PostEntity _entity;

  PostModel(this._repository, this._entity);

  String get id => _entity.id;
  String get username => _entity.username;
  String get profilePic => _entity.profilePic;
  String get postedIn => _entity.postedIn;
  DateTime get dateTime => _entity.dateTime;
  int get commentCount => _entity.commentCount;
  List<PostFeature> get features => _entity.features;
  int get likeCount => _entity.likeCount;
  bool get liked => _entity.liked;
  bool get saved => _entity.saved;

  void like() async {
    if (!_entity.liked) {
      _entity.like();
      await _repository.like();
    }
  }

  void unlike() async {
    if (_entity.liked) {
      _entity.unlike();
      await _repository.unlike();
    }
  }

  void save() async {
    if (!_entity.saved) {
      _entity.save();
      await _repository.save();
    }
  }

  void unsave() async {
    await _repository.unsave();
  }
}
