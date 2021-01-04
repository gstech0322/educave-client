class StoryEntity {
  final String profileId;
  final String profilePic;
  final String url;

  StoryEntity({
    required this.profileId,
    required this.profilePic,
    required this.url,
  });

  StoryEntity.fromJson(Map<String, dynamic> json)
      : profileId = json['profileId'],
        profilePic = json['profilePic'],
        url = json['url'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json['profileId'] = profileId;
    json['profilePic'] = profilePic;
    json['url'] = url;
    return json;
  }
}
