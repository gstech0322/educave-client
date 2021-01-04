import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/providers/api_provider.dart';
import '../content/content_screen.dart';
import '../posts/posts_repository.dart';
import '../posts/abstract_posts_vm.dart';
import '../posts/vms/recent_posts_vm.dart';
import '../stories/abstract_stories_vm.dart';
import '../stories/stories_repository.dart';
import '../stories/vms/recent_stories_vm.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<PostsViewModel>(
            create: (_) => RecentPostsViewModel(
              PostsRepository(
                ApiProvider(),
              ),
            ),
          ),
          ChangeNotifierProvider<StoriesViewModel>(
            create: (_) => RecentStoriesViewModel(
              StoriesRepository(
                ApiProvider(),
              ),
            ),
          ),
        ],
        child: const Content(),
      ),
    );
  }
}
