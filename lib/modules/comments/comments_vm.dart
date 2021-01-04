import '../../core/types/view_model.dart';
import '../../core/value_objects/text.dart';
import '../../data/providers/api_provider.dart';
import '../comment/comment_dto.dart';
import '../comment/comment_repository.dart';
import 'account_data_dto.dart';
import '../comment/comment_model.dart';
import 'comments_model.dart';

class CommentsViewModel with ViewModel {
  final CommentsModel _model;
  final AccountCommentDataDto _accountCommentData;

  bool _newCommentValid = false;
  bool _mounted = true;

  CommentsViewModel(this._model,
      {required AccountCommentDataDto accountCommentData})
      : _accountCommentData = accountCommentData {
    _loadComments();
  }

  bool get commentBeingAddedIsValid => _newCommentValid;
  List<CommentModel>? get comments => _model.comments;
  bool get commentsLoaded => _model.comments != null;

  Future<void> _loadComments() async {
    await _model.load();

    if (_mounted) {
      notifyListeners();
    }
  }

  void validate(String content) {
    try {
      CommentDto(content);
      _newCommentValid = true;
    } catch (e) {
      _newCommentValid = false;
    }

    notifyListeners();
  }

  void add(String content) {
    CommentModel newComment;

    try {
      newComment = CommentModel.create(
        CommentDto(content),
        CommentRepository(ApiProvider()),
        _accountCommentData,
      );
    } catch (e) {
      return;
    }

    _model.add(newComment);

    _newCommentValid = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
