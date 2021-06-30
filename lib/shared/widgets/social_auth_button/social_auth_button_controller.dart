import 'package:flutter/material.dart';

enum SocialAuthButtonVariants {
  GOOGLE,
  FACEBOOK,
  DEBUG,
}

class SocialAuthButtonController {
  final _availableButtonVariants = {
    SocialAuthButtonVariants.FACEBOOK: {
      "backgroundColor": Colors.indigo,
      "foregroundColor": Colors.white,
      "text": "Entrar com o Facebook",
    },
    SocialAuthButtonVariants.GOOGLE: {
      "backgroundColor": Colors.red.shade700,
      "foregroundColor": Colors.white,
      "text": "Entrar com o Google",
    },
    SocialAuthButtonVariants.DEBUG: {
      "backgroundColor": Colors.greenAccent.shade700,
      "foregroundColor": Colors.white,
      "text": "Printar usuário no console",
    },
  };

  Map<String, Object> handleButtonVariant(
      SocialAuthButtonVariants buttonVariant) {
    return _availableButtonVariants[buttonVariant] ??
        _availableButtonVariants[SocialAuthButtonVariants.DEBUG]!;
  }
}
