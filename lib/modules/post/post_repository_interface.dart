abstract class IPostRepository {
  Future<void> like();
  Future<void> unlike();

  Future<void> save();
  Future<void> unsave();
}
