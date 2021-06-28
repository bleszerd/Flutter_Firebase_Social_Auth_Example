import 'package:flutter/material.dart';

class GoogleAuthButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const GoogleAuthButtonWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.red),
        height: 65,
        width: double.infinity,
        child: Row(
          children: [
            Text(
              "Entrar com o google",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
