import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text.dart';
import '../../account/account_provider.dart';
import '../comments_vm.dart';

class AddComment extends StatefulWidget {
  const AddComment({Key? key}) : super(key: key);

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  final commentController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CommentsViewModel>(context);
    final account = Provider.of<AccountProvider>(context, listen: false);

    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(account.profilePic),
          radius: 22,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Form(
            key: formKey,
            child: TextFormField(
              onChanged: (value) => vm.validate(commentController.text),
              controller: commentController,
              style: AppTextTheme.commentStyle.merge(
                const TextStyle(fontSize: 15),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 14,
                ),
                isDense: true,
                hintText: 'Add a comment',
                hintStyle: const TextStyle(
                  color: AppColors.muted,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.outline,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.outline,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.check),
                  constraints: const BoxConstraints(),
                  padding: const EdgeInsets.all(12),
                  splashRadius: 1,
                  color: vm.commentBeingAddedIsValid
                      ? Theme.of(context).colorScheme.primary
                      : AppColors.muted,
                  onPressed: () {
                    vm.add(commentController.text);
                    commentController.clear();
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
