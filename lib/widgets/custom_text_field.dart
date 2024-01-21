import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText = true,
    this.inputType,
  });

  final Function(String)? onChanged;
  final String? hintText;
  TextInputType? inputType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //  obscureText: obscureText!,

      onChanged: onChanged,

      keyboardType: inputType,

      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
