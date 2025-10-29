import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String labelText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller; 

  const CustomInput({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 21, 49, 142), 
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      style: const TextStyle(fontSize: 16),
    );
  }
}