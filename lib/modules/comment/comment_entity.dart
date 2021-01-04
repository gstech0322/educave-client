import '../../core/value_objects/text.dart';

class CommentEntity {
  final String id;
  final String userId;
  final String username;
  final String profilePic;
  final Text content;
  final String timeSincePost;

  int _likeCount;
  bool _liked;

  CommentEntity(
      {required this.id,
      required this.userId,
      required this.username,
      required this.profilePic,
      required this.content,
      required int likeCount,
      required bool liked,
      required this.timeSincePost})
      : _likeCount = likeCount,
        _liked = liked;

  int get likeCount => _likeCount;
  bool get liked => _liked;

  void like() {
    _likeCount++;
    _liked = true;
  }

  void unlike() {
    _likeCount--;
    _liked = false;
  }
}
