import '../../../../data/providers/api_provider_interface.dart';
import '../../../data/providers/api_provider.dart';
import '../../post/features/image.dart';
import '../../post/features/text.dart';
import '../../post/post_entity.dart';
import '../../post/post_model.dart';
import '../../post/post_repository.dart';
import 'fetch_posts_strategy.dart';

class FromTop implements FetchPostsStrategy {
  @override
  Future<List<PostModel>> execute(IApiProvider client) async {
    print('from recent');
    return await Future.delayed(
      const Duration(seconds: 1),
      () => [
        PostModel(
          PostRepository(ApiProvider()),
          PostEntity(
            id: '3',
            username: 'Sarah Cameron',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            features: [
              TextFeature(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum et egestas a mi, imperdiet amet euismod nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              )
            ],
            postedIn: 'Coding Club',
            dateTime: DateTime.now(),
            commentCount: 322,
            saved: false,
            liked: false,
            likeCount: 432,
          ),
        ),
        PostModel(
          PostRepository(ApiProvider()),
          PostEntity(
            id: '3',
            username: 'Sarah Cameron',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            features: [
              ImageFeature('http://cdn.onlinewebfonts.com/svg/img_33054.png'),
              TextFeature(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum et egestas a mi, imperdiet amet euismod nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
            ],
            postedIn: 'Coding Club',
            dateTime: DateTime.now(),
            commentCount: 20,
            saved: false,
            liked: false,
            likeCount: 83,
          ),
        ),
        PostModel(
          PostRepository(ApiProvider()),
          PostEntity(
            id: '3',
            username: 'Sarah Cameron',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            features: [
              TextFeature(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Elementum et egestas a mi, imperdiet amet euismod nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              )
            ],
            postedIn: 'Coding Club',
            dateTime: DateTime.now(),
            commentCount: 322,
            saved: false,
            liked: false,
            likeCount: 432,
          ),
        ),
      ],
    );
  }
}
