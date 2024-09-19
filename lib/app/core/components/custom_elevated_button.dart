import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  final Color? color;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 58,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          textStyle: const TextStyle(
            fontFamily: 'Poppins',
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
