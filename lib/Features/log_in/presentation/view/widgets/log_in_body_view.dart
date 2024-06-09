import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_background_log_view.dart';


class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustombackgroundLogView(
      title: 'Log In Your Account',
    );
  }
}

