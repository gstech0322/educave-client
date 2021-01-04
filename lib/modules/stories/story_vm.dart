import '../../core/types/view_model.dart';
import 'story_entity.dart';
import 'story_model.dart';

class StoryViewModel with ViewModel {
  final StoryModel _model;

  StoryViewModel(this._model);

  String get profileId => _model.profileId;
  String get profilePic => _model.profilePic;
  String get url => _model.url;
}
