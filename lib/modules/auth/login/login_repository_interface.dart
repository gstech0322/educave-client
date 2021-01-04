import '../../account/account_entity.dart';
import 'login_dto.dart';

abstract class ILoginRepository {
  Future<AccountEntity> login(LoginDto loginDto);
}
