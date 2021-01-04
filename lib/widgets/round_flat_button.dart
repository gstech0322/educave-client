import 'package:flutter/material.dart';

class RoundFlatButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function() onPressed;

  const RoundFlatButton(
      {required this.text, required this.onPressed, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 93,
      height: 25,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).colorScheme.primary,
          minimumSize: Size.zero,
          padding: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
