import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AuthElevatedButton extends StatelessWidget {
  const AuthElevatedButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
    required this.text,
  });

  final Text text;
  final VoidCallback? onPressed;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 58,
      child: ElevatedButton.icon(
        iconAlignment: IconAlignment.start,
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            side: const BorderSide(
              color: AppColors.grey300,
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        label: text,
        icon: Row(
          children: [
            Image.asset(imagePath),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
