import 'package:flutter/material.dart';

class HepaTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final Icon? suffixIcon;
  final VoidCallback? onTap;
  const HepaTextField(
      {super.key,
      required this.controller,
      this.obscureText = false,
      required this.hintText,
      this.suffixIcon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
