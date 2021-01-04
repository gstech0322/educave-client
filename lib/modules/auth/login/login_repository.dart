import '../../../data/providers/api_provider_interface.dart';
import '../../account/account_entity.dart';
import 'login_dto.dart';
import 'login_gql.dart';
import 'login_repository_interface.dart';

class LoginRepository implements ILoginRepository {
  final IApiProvider _client;

  LoginRepository(this._client);

  @override
  Future<AccountEntity> login(LoginDto loginDto) async {
    final response =
        await _client.query(LOGIN_QUERY, variables: loginDto.toJson());

    print(response);
    return AccountEntity.fromJson(response['login']['user']);
  }
}
