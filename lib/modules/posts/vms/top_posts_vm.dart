import '../abstract_posts_vm.dart';
import '../posts_model.dart';
import '../posts_repository_interface.dart';
import '../strategies/from_top.dart';

class TopPostsViewModel extends PostsViewModel {
  TopPostsViewModel(IPostsRepository repository)
      : super(PostsModel(repository)) {
    repository.setFetchPostsStrategy(FromTop());
    super.loadPosts();
  }
}
