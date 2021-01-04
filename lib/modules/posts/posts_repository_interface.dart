import '../post/post_model.dart';
import 'strategies/fetch_posts_strategy.dart';

abstract class IPostsRepository {
  Future<List<PostModel>> posts();
  void setFetchPostsStrategy(FetchPostsStrategy strategy);
}
