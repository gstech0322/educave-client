import '../../core/value_objects/value_objects.dart';

class AccountEntity {
  final EmailAddress _email;
  final String _profilePic;
  final String _id;
  final String _firstName;
  final String _lastName;

  AccountEntity(
      {required String id,
      required EmailAddress email,
      required String profilePic,
      required String firstName,
      required String lastName})
      : _id = id,
        _email = email,
        _profilePic = profilePic,
        _firstName = firstName,
        _lastName = lastName;

  String get profilePic => _profilePic;
  String get id => _id;
  String get name => '$_firstName $_lastName';

  AccountEntity.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _email = EmailAddress(json['email']),
        _profilePic = json['profilePic'],
        _firstName = json['firstName'],
        _lastName = json['lastName'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = _email;
    data['profilePic'] = _profilePic;
    return data;
  }
}
