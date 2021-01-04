import '../group/mutual_group_entity.dart';

class UserEntity {
  final String profilePic;
  final String username;
  final List<MutualGroupEntity> mutualGroups;
  bool _isFollowing;

  UserEntity({
    required this.profilePic,
    required this.username,
    required this.mutualGroups,
    required bool isFollowing,
  }) : _isFollowing = isFollowing;

  bool get isFollowing => _isFollowing;

  void follow() {
    _isFollowing = true;
  }

  void unfollow() {
    _isFollowing = false;
  }

  UserEntity.fromJson(Map<String, dynamic> json)
      : profilePic = json['profilePic'],
        username = json['username'],
        mutualGroups = json['mutualGroups'],
        _isFollowing = json['isFollowing'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profilePic'] = profilePic;
    data['mutualGroups'] = mutualGroups;
    data['username'] = username;
    data['isFollowing'] = _isFollowing;
    return data;
  }
}
