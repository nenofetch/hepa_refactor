import 'package:flutter/material.dart';

class HepaTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final Icon? suffixIcon;
  final VoidCallback? onTap;
  final Iterable<String>? autofillHints;
  final TextInputType? textInputType;

  const HepaTextField({
    super.key,
    this.textInputType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
    this.onTap,
    this.autofillHints,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      autofillHints: autofillHints,
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
