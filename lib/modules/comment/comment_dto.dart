import '../../core/value_objects/text.dart';

class CommentDto {
  final Text _content;

  CommentDto._(this._content);

  factory CommentDto(String content) {
    return CommentDto._(Text(content));
  }

  Text get content => _content;
}
