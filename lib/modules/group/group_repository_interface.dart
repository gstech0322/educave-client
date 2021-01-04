abstract class IGroupRepository {
  Future<void> join();
  Future<void> leave();
  Future<void> delete();
}
