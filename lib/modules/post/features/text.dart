import 'post_feature.dart';

class TextFeature implements PostFeature {
  final String _text;

  TextFeature(this._text);

  @override
  String get content => _text;

  @override
  String get type => 'text';
}
