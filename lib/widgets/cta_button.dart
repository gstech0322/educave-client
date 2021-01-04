import 'package:flutter/material.dart';

import '../core/theme/colors.dart';

class CtaButton extends StatelessWidget {
  final Color? color;
  final void Function()? onPressed;
  final String text;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final bool bold;
  final bool outlined;

  const CtaButton(
      {required this.onPressed,
      required this.text,
      this.color,
      this.padding,
      this.width,
      this.height,
      this.textStyle,
      this.bold = true,
      this.outlined = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: outlined
                ? const BorderSide(color: AppColors.outline)
                : const BorderSide(color: Colors.transparent),
          ),
          onPrimary: outlined ? Colors.black : Colors.white,
          primary: outlined
              ? Colors.transparent
              : Theme.of(context).colorScheme.primary,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          padding: padding,
          textStyle: textStyle ??
              TextStyle(
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                fontSize: 15,
              ),
        ),
      ),
    );
  }
}
