import '../post/post_model.dart';
import 'posts_repository_interface.dart';

class PostsModel {
  final IPostsRepository _repository;
  List<PostModel>? _posts;

  PostsModel(this._repository);

  List<PostModel>? get posts => _posts;

  Future<void> load() async {
    _posts = await _repository.posts();
  }
}
