import '../../../data/providers/api_provider.dart';
import '../../group/mutual_group_entity.dart';
import '../../user/user_entity.dart';
import '../../user/user_model.dart';
import '../../../data/providers/api_provider_interface.dart';
import '../../user/user_repository.dart';
import 'fetch_users_strategy.dart';

class AllUsers implements FetchUsersStrategy {
  @override
  Future<List<UserModel>> execute(IApiProvider client) async {
    return await Future.delayed(
      const Duration(seconds: 1),
      () => [
        UserModel(
          UserRepository(ApiProvider()),
          UserEntity(
            username: 'Sarah Cameronnnnnnnnnnnnnnnnn',
            mutualGroups: [
              MutualGroupEntity(id: '2', name: 'Coding Club'),
              MutualGroupEntity(id: '3', name: 'Engineering Club')
            ],
            isFollowing: false,
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
          ),
        ),
        UserModel(
          UserRepository(ApiProvider()),
          UserEntity(
            username: 'Sarah Cameron',
            mutualGroups: [
              MutualGroupEntity(id: '2', name: 'Coding Club'),
              MutualGroupEntity(id: '3', name: 'Engineering Club')
            ],
            isFollowing: false,
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
          ),
        ),
        UserModel(
          UserRepository(ApiProvider()),
          UserEntity(
            username: 'Sarah Cameron',
            mutualGroups: [
              MutualGroupEntity(id: '2', name: 'Coding Club'),
              MutualGroupEntity(id: '3', name: 'Engineering Club')
            ],
            isFollowing: false,
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
          ),
        ),
        UserModel(
          UserRepository(ApiProvider()),
          UserEntity(
            username: 'Sarah Cameron',
            mutualGroups: [
              MutualGroupEntity(id: '2', name: 'Coding Club'),
              MutualGroupEntity(id: '3', name: 'Engineering Club')
            ],
            isFollowing: false,
            profilePic:
                'https://e7.pngegg.com/pngimages/122/453/png-clipart-computer-icons-user-profile-avatar-female-profile-heroes-head.png',
          ),
        ),
      ],
    );
  }
}
