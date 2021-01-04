import 'package:flutter/foundation.dart';

import '../../core/types/view_model.dart';
import 'stories_model.dart';
import 'story_model.dart';

abstract class StoriesViewModel with ViewModel {
  final StoriesModel _model;
  bool _mounted = true;

  StoriesViewModel(this._model);

  List<StoryModel>? get stories => _model.stories;
  bool get storiesLoaded => _model.stories != null;

  @protected
  Future<void> loadStories() async {
    await _model.load();
    if (_mounted) notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _mounted = false;
  }
}
