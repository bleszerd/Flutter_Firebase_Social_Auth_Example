import 'package:firebase_social_auth_test/modules/homepage/home_page_controller.dart';
import 'package:firebase_social_auth_test/shared/auth/auth_controller.dart';
import 'package:firebase_social_auth_test/shared/widgets/google_auth_button/google_auth_button_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final authController = AuthController();
  final homepageController = HomePageController();

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.fetchUserFromData(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleAuthButtonWidget(onTap: () {
              homepageController.googleSignIn(context);
            }),
            GoogleAuthButtonWidget(onTap: () {
              print(authController.user.toString());
            }),
            GoogleAuthButtonWidget(onTap: () {
              homepageController.facebookSignIn();
            }),
          ],
        ),
      ),
    );
  }
}
