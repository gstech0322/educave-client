import '../util/error.dart';

class EmailAddress {
  final String _email;

  EmailAddress._(this._email);

  factory EmailAddress(String? email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (email == null || email.isEmpty) throw CustomException('Enter an email');

    if (!emailRegExp.hasMatch(email)) throw CustomException('Invalid email');

    return EmailAddress._(email);
  }

  @override
  String toString() => _email;
}
