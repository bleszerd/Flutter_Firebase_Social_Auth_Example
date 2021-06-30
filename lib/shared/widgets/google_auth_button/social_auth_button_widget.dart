import 'package:firebase_social_auth_test/shared/widgets/google_auth_button/social_auth_button_controller.dart';
import 'package:flutter/material.dart';

class SocialAuthButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final SocialAuthButtonVariants buttonVariant;
  final String? text;

  const SocialAuthButtonWidget(
      {Key? key,
      required this.onTap,
      this.text,
      this.buttonVariant = SocialAuthButtonVariants.DEBUG})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final socialAuthButtonController = SocialAuthButtonController();
    final buttonprops =
        socialAuthButtonController.handleButtonVariant(buttonVariant);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: buttonprops["backgroundColor"] as Color),
        height: 65,
        width: double.infinity,
        child: Row(
          children: [
            Text(
              text ?? buttonprops["text"] as String,
              style: TextStyle(
                  color: buttonprops["foregroundColor"] as Color,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
