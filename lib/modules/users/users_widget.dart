import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/providers/api_provider.dart';
import '../user/user_preview_widget.dart';
import '../user/user_repository.dart';
import '../user/user_vm.dart';
import 'abstract_users_vm.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UsersViewModel>(context);

    if (vm.usersLoaded) {
      return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          itemCount: vm.users!.length,
          itemBuilder: (context, index) {
            return ChangeNotifierProvider(
              create: (_) => UserViewModel(
                vm.users![index],
              ),
              child: Column(
                children: const [
                  UserPreview(),
                  Divider(),
                ],
              ),
            );
          },
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
