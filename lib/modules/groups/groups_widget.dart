import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../group/group_preview_widget.dart';
import '../group/group_vm.dart';
import 'abstract_groups_vm.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<GroupsViewModel>(context);

    if (vm.groupsLoaded) {
      return ListView.builder(
        itemCount: vm.groups!.length,
        itemBuilder: ((context, index) {
          return ChangeNotifierProvider(
            create: (_) => GroupViewModel(
              vm.groups![index],
            ),
            child: const GroupPreview(),
          );
        }),
      );
    } else {
      return const SizedBox();
    }
  }
}
