import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback? onpressed;

  const CustomTextButton({
    super.key,
    required this.children,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
