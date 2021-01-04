import '../../core/value_objects/text.dart';
import '../../data/providers/api_provider.dart';
import '../../data/providers/api_provider_interface.dart';
import '../comment/comment_dto.dart';
import '../comment/comment_model.dart';
import '../comment/comment_repository.dart';
import 'account_data_dto.dart';
import 'comments_repository_interface.dart';

class CommentsRepository implements ICommentsRepository {
  final IApiProvider _client;
  final String _postId;

  CommentsRepository(this._client, this._postId);

  @override
  Future<void> addComment(CommentModel comment) async {}

  @override
  Future<List<CommentModel>> comments() async {
    return await Future.delayed(
        const Duration(seconds: 1),
        () => [
              CommentModel.create(
                CommentDto('Great post wow super interesting etc whatever'),
                CommentRepository(ApiProvider()),
                AccountCommentDataDto(
                    '1',
                    'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
                    'Bob Smith'),
              ),
              CommentModel.create(
                CommentDto('Great post wow super interesting etc whatever'),
                CommentRepository(ApiProvider()),
                AccountCommentDataDto(
                    '1',
                    'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
                    'Bob Smith'),
              ),
            ]);
  }
}
