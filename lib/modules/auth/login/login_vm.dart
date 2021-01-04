import '../../../core/types/view_model.dart';
import '../../account/account_entity.dart';
import 'login_dto.dart';
import 'login_model.dart';

class LoginViewModel with ViewModel {
  final LoginModel _model;

  LoginViewModel(this._model);

  Future<AccountEntity> login(String email, String password) async {
    LoginDto loginDto;

    loginDto = LoginDto(email, password);

    return await _model.login(loginDto);
  }
}
