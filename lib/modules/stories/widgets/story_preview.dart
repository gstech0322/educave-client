import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../story_vm.dart';

class StoryPreview extends StatelessWidget {
  const StoryPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<StoryViewModel>(context);
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            vm.url,
            height: double.infinity,
            width: 135,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            backgroundImage: NetworkImage(vm.profilePic),
          ),
        ),
      ],
    );
  }
}
