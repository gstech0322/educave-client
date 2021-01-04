import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../comment/comment_vm.dart';
import '../../comment/comment_widget.dart';
import '../comments_vm.dart';
import 'add_comment.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CommentsViewModel>(context);

    if (vm.commentsLoaded) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: vm.comments!.length,
                  itemBuilder: ((context, index) {
                    return ChangeNotifierProvider(
                      create: (_) => CommentViewModel(
                        vm.comments![index],
                      ),
                      child: const Comment(),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AddComment(),
          ],
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
