import '../util/error.dart';

class Password {
  final String _password;

  Password._(this._password);

  factory Password(String? password) {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

    if (password == null || password.isEmpty) {
      throw CustomException('Enter a password');
    }

    if (!passwordRegExp.hasMatch(password)) {
      throw CustomException('Invalid password');
    }

    return Password._(password);
  }

  @override
  String toString() => _password;
}
