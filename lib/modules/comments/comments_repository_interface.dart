import '../comment/comment_model.dart';

abstract class ICommentsRepository {
  Future<List<CommentModel>> comments();
  Future<void> addComment(CommentModel comment);
}
