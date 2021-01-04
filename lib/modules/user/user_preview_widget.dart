import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

import '../../widgets/cta_button.dart';
import 'user_screen.dart';
import 'user_vm.dart';

class UserPreview extends StatelessWidget {
  const UserPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UserViewModel>(context);

    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider<UserViewModel>.value(
            value: vm,
            child: const User(),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(vm.profilePic),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          vm.username,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          vm.mutualGroups
                              .mapIndexed((i, e) =>
                                  '${e.name}${i == vm.mutualGroups.length - 1 ? '' : ', '}')
                              .join(),
                          style: const TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              width: 100,
              height: 32,
              child: CtaButton(
                onPressed: vm.isFollowing ? vm.unfollow : vm.follow,
                text: vm.isFollowing ? 'unfollow' : 'follow',
                width: double.infinity,
                bold: false,
                outlined: vm.isFollowing ? true : false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
