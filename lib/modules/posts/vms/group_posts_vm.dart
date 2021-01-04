import '../abstract_posts_vm.dart';
import '../posts_model.dart';
import '../posts_repository_interface.dart';
import '../strategies/from_group.dart';

class GroupPostsViewModel extends PostsViewModel {
  GroupPostsViewModel(String groupId, IPostsRepository repository)
      : super(PostsModel(repository)) {
    repository.setFetchPostsStrategy(FromGroup(groupId));
    super.loadPosts();
  }
}
