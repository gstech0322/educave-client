import '../../../data/providers/api_provider_interface.dart';
import '../../user/user_model.dart';

abstract class FetchUsersStrategy {
  Future<List<UserModel>> execute(IApiProvider client);
}
