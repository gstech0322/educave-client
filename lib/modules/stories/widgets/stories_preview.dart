import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../abstract_stories_vm.dart';
import '../story_vm.dart';
import 'story_preview.dart';

class StoriesPreview extends StatelessWidget {
  const StoriesPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<StoriesViewModel>(context);

    if (vm.storiesLoaded) {
      return Container(
        height: 180,
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: vm.stories!.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: ChangeNotifierProvider(
                create: (_) => StoryViewModel(vm.stories![index]),
                child: const StoryPreview(),
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
