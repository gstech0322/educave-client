import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/colors.dart';
import '../../../widgets/round_flat_button.dart';
import '../group_vm.dart';

class GroupInfo extends StatelessWidget {
  const GroupInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<GroupViewModel>(context);

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(vm.backgroundPic),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: double.infinity,
                      child: Text(
                        '${vm.numMembers} students',
                        textAlign: TextAlign.right,
                        style: const TextStyle(color: AppColors.heavyMuted),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Text(
                      vm.name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(vm.summary),
                    const SizedBox(
                      height: 15,
                    ),
                    RoundFlatButton(
                      color: vm.joined ? AppColors.danger : AppColors.primary,
                      text: vm.joined ? 'Leave' : 'Join',
                      onPressed: vm.joined ? vm.unjoin : vm.join,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
          Positioned(
            left: 20,
            top: 120,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: CircleAvatar(
                backgroundImage: NetworkImage(vm.groupPic),
                backgroundColor: Colors.white,
                radius: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
