import 'package:flutter/material.dart';
import 'package:hepa/presentation/misc/constants.dart';

class HepaTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final Icon? suffixIcon;
  final VoidCallback? onTap;
  final Iterable<String>? autofillHints;
  final TextInputType? textInputType;
  final bool readOnly;

  const HepaTextField({
    super.key,
    this.textInputType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
    this.onTap,
    this.autofillHints,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      keyboardType: textInputType,
      autofillHints: autofillHints,
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: blackColor,
          ),
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
