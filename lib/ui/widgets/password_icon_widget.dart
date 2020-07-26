import 'package:flutter/material.dart';

class PasswordIconWidget extends StatelessWidget {
  final bool showPassword;
  PasswordIconWidget(this.showPassword);

  @override
  Widget build(BuildContext context) {
    return Icon(showPassword ? Icons.visibility : Icons.visibility_off);
  }
}
