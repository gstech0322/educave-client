import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  final Widget child;
  const MySafeArea({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: child,
      ),
    );
  }
}
