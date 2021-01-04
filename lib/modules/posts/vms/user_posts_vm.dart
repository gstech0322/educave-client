import '../abstract_posts_vm.dart';
import '../posts_model.dart';
import '../posts_repository_interface.dart';
import '../strategies/from_user.dart';

class UserPostsViewModel extends PostsViewModel {
  UserPostsViewModel(IPostsRepository repository)
      : super(PostsModel(repository)) {
    repository.setFetchPostsStrategy(FromUser());
    super.loadPosts();
  }
}
