import 'package:flutter/material.dart';

class PersistentTab extends StatefulWidget {
  final Widget child;
  const PersistentTab({required this.child, Key? key}) : super(key: key);

  @override
  State<PersistentTab> createState() => _PersistentTabState();
}

class _PersistentTabState extends State<PersistentTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
