import '../comment/comment_model.dart';

import 'comments_repository_interface.dart';

class CommentsModel {
  final ICommentsRepository _repository;
  List<CommentModel>? _comments;

  CommentsModel(this._repository);

  List<CommentModel>? get comments => _comments;

  Future<void> load() async {
    _comments = await _repository.comments();
  }

  Future<void> add(CommentModel comment) async {
    _comments!.add(comment);
    await _repository.addComment(comment);
  }
}
