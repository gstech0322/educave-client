import '../user/user_model.dart';
import 'strategies/fetch_users_strategy.dart';

abstract class IUsersRepository {
  Future<List<UserModel>> users();
  void setFetchUsersStrategy(FetchUsersStrategy strategy);
}
