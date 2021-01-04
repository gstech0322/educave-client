import 'story_entity.dart';

class StoryModel {
  final StoryEntity _entity;
  StoryModel(this._entity);

  String get profileId => _entity.profileId;
  String get profilePic => _entity.profilePic;
  String get url => _entity.url;
}
