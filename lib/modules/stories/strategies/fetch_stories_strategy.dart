import '../../../data/providers/api_provider_interface.dart';
import '../story_model.dart';

abstract class FetchStoriesStrategy {
  Future<List<StoryModel>> execute(IApiProvider client);
}
