import 'post_feature.dart';

class ImageFeature implements PostFeature {
  final String _link;

  ImageFeature(this._link);

  @override
  String get content => _link;

  @override
  String get type => 'image';
}
