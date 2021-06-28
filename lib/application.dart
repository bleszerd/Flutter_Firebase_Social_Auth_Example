import 'package:firebase_social_auth_test/modules/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Application extends StatelessWidget {
  Application() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App test",
      home: Homepage(),
    );
  }
}
