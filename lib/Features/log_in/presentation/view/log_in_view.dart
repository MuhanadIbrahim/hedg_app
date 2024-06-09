import 'package:flutter/material.dart';

import 'widgets/log_in_body_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginBodyView());
  }
}
