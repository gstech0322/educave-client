import '../abstract_posts_vm.dart';
import '../posts_model.dart';
import '../posts_repository_interface.dart';
import '../strategies/from_recent.dart';

class RecentPostsViewModel extends PostsViewModel {
  RecentPostsViewModel(IPostsRepository repository)
      : super(PostsModel(repository)) {
    repository.setFetchPostsStrategy(FromRecent());
    super.loadPosts();
  }
}
