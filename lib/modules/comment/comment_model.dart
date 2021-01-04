import '../../core/value_objects/text.dart';
import '../comments/account_data_dto.dart';
import 'comment_dto.dart';
import 'comment_entity.dart';
import 'comment_repository_interface.dart';

class CommentModel {
  final CommentEntity _entity;
  final ICommentRepository _repository;

  CommentModel(this._repository, this._entity);

  factory CommentModel.create(
    CommentDto commentDto,
    ICommentRepository repository,
    AccountCommentDataDto accountCommentDataDto,
  ) {
    return CommentModel(
      repository,
      CommentEntity(
        id: 'id',
        userId: accountCommentDataDto.id,
        username: accountCommentDataDto.name,
        profilePic: accountCommentDataDto.profilePic,
        content: commentDto.content,
        likeCount: 0,
        liked: false,
        timeSincePost: 'now',
      ),
    );
  }

  String get id => _entity.id;
  String get username => _entity.username;
  String get profilePic => _entity.profilePic;
  String get content => _entity.content.toString();
  int get likeCount => _entity.likeCount;
  bool get liked => _entity.liked;
  String get timeSincePost => _entity.timeSincePost;

  void like() async {
    if (_entity.liked) return;

    _entity.like();
    await _repository.like();
  }

  void unlike() async {
    if (!_entity.liked) return;

    _entity.unlike();
    await _repository.unlike();
  }
}
