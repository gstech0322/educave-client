import '../../../core/value_objects/email.dart';
import '../../../core/value_objects/value_objects.dart';

class LoginDto {
  final EmailAddress _email;
  final Password _password;

  LoginDto._(this._email, this._password);

  factory LoginDto(String email, String password) {
    return LoginDto._(EmailAddress(email), Password(password));
  }

  Map<String, String> toJson() {
    return {
      'email': _email.toString(),
      'password': _password.toString(),
    };
  }
}
