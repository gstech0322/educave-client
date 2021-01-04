import 'features/image.dart';
import 'features/post_feature.dart';
import 'features/text.dart';

class PostEntity {
  final String id;
  final String username;
  final String profilePic;
  final String postedIn;
  final DateTime dateTime;
  final List<PostFeature> features;
  final int commentCount;

  int _likeCount;
  bool _liked;
  bool _saved;

  PostEntity({
    required this.id,
    required this.username,
    required this.profilePic,
    required this.postedIn,
    required this.dateTime,
    required this.commentCount,
    required this.features,
    required int likeCount,
    required bool liked,
    required bool saved,
  })  : _likeCount = likeCount,
        _liked = liked,
        _saved = saved;

  int get likeCount => _likeCount;
  bool get liked => _liked;
  bool get saved => _saved;

  void like() {
    _liked = true;
    _likeCount++;
  }

  void unlike() {
    _liked = false;
    _likeCount--;
  }

  void save() {
    _saved = true;
  }

  void unsave() {
    _saved = false;
  }

  PostEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        profilePic = json['profilePic'],
        postedIn = json['postedIn'],
        dateTime = json['dateTime'],
        commentCount = json['commentCount'],
        features = _featuresFromJson(json['features']),
        _likeCount = json['likeCount'],
        _liked = json['isLiked'],
        _saved = json['isSaved'];

  static List<PostFeature> _featuresFromJson(Map<String, dynamic> json) {
    List<PostFeature> features = [];
    json['image'] ? features.add(ImageFeature(json['image'])) : null;
    json['text'] ? features.add(TextFeature(json['text'])) : null;
    return features;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['profilePic'] = profilePic;
    data['postedIn'] = postedIn;
    data['dateTime'] = dateTime;
    data['commentCount'] = commentCount;
    data['features'] = _featuresToJson();
    data['likeCount'] = _likeCount;
    data['isLiked'] = _liked;
    data['isSaved'] = _saved;
    return data;
  }

  List<Map<String, String>> _featuresToJson() {
    List<Map<String, String>> featuresAsJson = [];

    for (PostFeature feature in features) {
      featuresAsJson.add(<String, String>{feature.type: feature.content});
    }

    return featuresAsJson;
  }
}
