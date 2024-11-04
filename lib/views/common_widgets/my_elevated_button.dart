import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const MyElevatedButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: backgroundColor == null
          ? null
          : ButtonStyle(
              backgroundColor: WidgetStateProperty.all(backgroundColor),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(color: foregroundColor)),
        ],
      ),
    );
  }
}
