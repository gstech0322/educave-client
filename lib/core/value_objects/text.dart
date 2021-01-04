import '../util/error.dart';

class Text {
  final String _text;
  Text._(this._text);

  factory Text(String? text) {
    if (text == null) {
      throw CustomException('Enter text');
    }

    if (text.isEmpty) {
      throw CustomException('Text too short');
    }

    return Text._(text);
  }

  @override
  String toString() => _text;
}
