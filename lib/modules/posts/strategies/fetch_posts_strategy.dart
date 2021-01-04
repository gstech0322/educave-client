import '../../../../data/providers/api_provider_interface.dart';
import '../../post/post_model.dart';

abstract class FetchPostsStrategy {
  Future<List<PostModel>> execute(IApiProvider client);
}
