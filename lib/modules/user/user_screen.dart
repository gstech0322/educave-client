import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/providers/api_provider.dart';
import '../../widgets/safearea.dart';
import '../posts/abstract_posts_vm.dart';
import '../posts/posts_repository.dart';
import '../posts/posts_widget.dart';
import '../posts/vms/user_posts_vm.dart';
import 'user_vm.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UserViewModel>(context);
    return MySafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ChangeNotifierProvider<PostsViewModel>(
                  create: (_) => UserPostsViewModel(
                    PostsRepository(
                      ApiProvider(),
                    ),
                  ),
                  child: const Posts(),
                ),
              )
            ],
          )),
    );
  }
}
