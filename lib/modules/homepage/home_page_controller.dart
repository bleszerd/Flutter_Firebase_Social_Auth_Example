import 'package:firebase_social_auth_test/models/user_model.dart';
import 'package:firebase_social_auth_test/shared/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePageController {
  final authController = AuthController();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        email: response.email,
        id: response.id,
        photo: response.photoUrl,
      );
      authController.setUser(context, user);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }

  Future<void> facebookSignIn(BuildContext context) async {
    try {
      var result = await FacebookAuth.instance
          .login(permissions: ['email', 'public_profile']);
      var userData = await FacebookAuth.instance.getUserData();
      UserModel user = UserModel(
        name: userData["name"],
        email: userData["email"],
        id: userData["id"],
        photo: userData["picture"]["data"]["url"],
      );
      await authController.setUser(context, user);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
