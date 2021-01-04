import '../../data/providers/api_provider_interface.dart';
import 'post_repository_interface.dart';

class PostRepository implements IPostRepository {
  final IApiProvider _client;

  PostRepository(this._client);

  @override
  Future<void> like() async {
    var l = await Future.delayed(const Duration(seconds: 1), () => []);
    // await _client.get('');
  }

  @override
  Future<void> unlike() async {
    // await _client.get('');
  }

  @override
  Future<void> save() async {
    // await _client.get('');
  }

  @override
  Future<void> unsave() async {
    // await _client.get('');
  }
}
