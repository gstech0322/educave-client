import '../../data/providers/api_provider_interface.dart';
import 'strategies/fetch_users_strategy.dart';
import '../user/user_model.dart';
import 'users_repository_interface.dart';

class UsersRepository implements IUsersRepository {
  final IApiProvider _client;
  late FetchUsersStrategy _strategy;

  UsersRepository(this._client);

  @override
  void setFetchUsersStrategy(FetchUsersStrategy strategy) {
    _strategy = strategy;
  }

  @override
  Future<List<UserModel>> users() async {
    return await _strategy.execute(_client);
  }
}
