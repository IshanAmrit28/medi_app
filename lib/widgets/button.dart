import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final double height;

  Button({
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.height = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:Color(0xFFFF9A9E),
        foregroundColor: textColor,
        padding: EdgeInsets.symmetric(vertical: height, horizontal: 110),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20, // Font size
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
