import 'package:firebase_social_auth_test/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static UserModel? _user;

  UserModel get user => _user!;

  Future<void> setUser(BuildContext context, UserModel? user) async {
    if (user != null) {
      await saveUser(user);
      _user = user;
      print("Okay");
    } else {
      print("Fail");
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
  }

  Future<void> fetchUserFromData(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
    } else {
      setUser(context, null);
    }
  }
}
