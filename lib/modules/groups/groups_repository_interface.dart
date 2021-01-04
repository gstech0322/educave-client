import '../group/group_model.dart';
import 'strategies/fetch_groups_strategy.dart';

abstract class IGroupsRepository {
  Future<List<GroupModel>> groups();
  void setFetchGroupsStrategy(FetchGroupsStrategy strategy);
}
