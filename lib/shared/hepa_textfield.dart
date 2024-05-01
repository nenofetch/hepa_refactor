import 'package:flutter/material.dart';

class HepaTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final Icon? suffixIcon;
  final VoidCallback? onTap;
  final Iterable<String>? autofillHints;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
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
    this.validator,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      validator: validator,
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
