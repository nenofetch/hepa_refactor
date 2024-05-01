import 'package:flutter/material.dart';
import 'package:hepa/utils/constans.dart';

class HepaElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const HepaElevatedButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: blackColor,
          foregroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: medium, color: ghostWhite),
        ),
      ),
    );
  }
}
