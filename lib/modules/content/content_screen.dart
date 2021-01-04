import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../post/post_vm.dart';
import '../post/post_widget.dart';
import '../posts/abstract_posts_vm.dart';
import '../stories/widgets/stories_preview.dart';

class Content extends StatelessWidget {
  final Widget? leading;
  const Content({this.leading, Key? key}) : super(key: key);

  Widget preLoadStories(BuildContext context) {
    return const StoriesPreview();
  }

  @override
  Widget build(BuildContext context) {
    final postsVm = Provider.of<PostsViewModel>(context);
    final stories = preLoadStories(context);

    if (postsVm.postsLoaded) {
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: postsVm.posts!.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                if (leading != null && index == 0) ...[
                  leading!,
                ],
                if (index == 1) ...[
                  stories,
                  const Divider(),
                ],
                ChangeNotifierProvider(
                  create: (_) => PostViewModel(
                    postsVm.posts![index],
                  ),
                  child: const Post(),
                ),
                const Divider(),
                if (postsVm.posts!.length == 1) ...[
                  stories,
                  const Divider(),
                ],
              ],
            ),
          );
        },
      );
    } else {
      return const SizedBox();
    }
  }
}
