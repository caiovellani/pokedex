import 'package:flutter/material.dart';

import '../../../../core/components/custom_text_field.dart';

class RegisterStepContent extends StatelessWidget {
  const RegisterStepContent({
    super.key,
    required this.helperText,
    required this.hintText,
    this.obscureText = false,
    this.textInputType,
    this.controller,
    this.error,
  });

  final TextEditingController? controller;
  final String helperText;
  final String hintText;
  final bool obscureText;
  final TextInputType? textInputType;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller,
            hintText: hintText,
            obscureText: obscureText,
            textInputType: textInputType,
            error: error,
          ),
          const SizedBox(height: 8),
          Text(helperText),
        ],
      ),
    );
  }
}
