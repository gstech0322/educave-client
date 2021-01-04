import 'stories_repository_interface.dart';
import 'story_model.dart';

class StoriesModel {
  final IStoriesRepository _repository;
  List<StoryModel>? _stories;

  StoriesModel(this._repository);

  List<StoryModel>? get stories => _stories;

  Future<void> load() async {
    _stories = await _repository.stories();
  }
}
