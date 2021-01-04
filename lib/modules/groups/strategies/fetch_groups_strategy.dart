import '../../../../data/providers/api_provider_interface.dart';
import '../../group/group_model.dart';

abstract class FetchGroupsStrategy {
  Future<List<GroupModel>> execute(IApiProvider client);
}
