import 'story_model.dart';
import 'strategies/fetch_stories_strategy.dart';

abstract class IStoriesRepository {
  Future<List<StoryModel>> stories();
  void setFetchStoriesStrategy(FetchStoriesStrategy strategy);
}
