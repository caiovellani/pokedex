import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/default_text.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.obscureText = false,
    this.textInputType,
    this.suffixIcon,
    this.error,
  });

  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final String? error;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // late bool obscureText = widget.obscureText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          errorText: widget.error,
          suffixIcon: widget.suffixIcon,
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey400,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.transparent,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const DefaultTextApp(
            color: AppColors.grey400,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
