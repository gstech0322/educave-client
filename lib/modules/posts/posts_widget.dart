import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../post/post_vm.dart';
import '../post/post_widget.dart';
import 'abstract_posts_vm.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<PostsViewModel>(context);

    if (vm.postsLoaded) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: vm.posts!.length,
        itemBuilder: ((context, index) {
          return ChangeNotifierProvider(
            create: (_) => PostViewModel(
              vm.posts![index],
            ),
            child: Column(
              children: const [
                Post(),
                Divider(),
              ],
            ),
          );
        }),
      );
    } else {
      return const SizedBox();
    }
  }
}
