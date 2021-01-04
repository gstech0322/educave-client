import '../story_entity.dart';
import '../../../data/providers/api_provider_interface.dart';
import '../story_model.dart';
import 'fetch_stories_strategy.dart';

class FromGroup extends FetchStoriesStrategy {
  final String _id;
  FromGroup(this._id);

  @override
  Future<List<StoryModel>> execute(IApiProvider client) async {
    print('stories from recent');
    return await Future.delayed(
      const Duration(seconds: 1),
      () => [
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://pe-images.s3.amazonaws.com/basics/cc/image-size-resolution/resize-images-for-print/image-cropped-8x10.jpg',
          ),
        ),
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://upload.wikimedia.org/wikipedia/commons/9/91/F-15_vertical_deploy.jpg',
          ),
        ),
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://pe-images.s3.amazonaws.com/basics/cc/image-size-resolution/resize-images-for-print/image-cropped-8x10.jpg',
          ),
        ),
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://pe-images.s3.amazonaws.com/basics/cc/image-size-resolution/resize-images-for-print/image-cropped-8x10.jpg',
          ),
        ),
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://upload.wikimedia.org/wikipedia/commons/9/91/F-15_vertical_deploy.jpg',
          ),
        ),
        StoryModel(
          StoryEntity(
            profileId: '1',
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
            url:
                'https://pe-images.s3.amazonaws.com/basics/cc/image-size-resolution/resize-images-for-print/image-cropped-8x10.jpg',
          ),
        ),
      ],
    );
  }
}
