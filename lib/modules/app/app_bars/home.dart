import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 10);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      toolbarHeight: kToolbarHeight,
      title: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Educave',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
