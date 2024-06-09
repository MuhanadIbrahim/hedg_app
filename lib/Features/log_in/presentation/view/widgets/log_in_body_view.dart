import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view/widgets/log_in_body_content.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_background_log_view.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustombackgroundLogView(
          title: 'Log In Your Account',
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
          child: const Center(
            child: SingleChildScrollView(
              child: LogInBodyContent(),
            ),
          ),
        )
      ],
    );
  }
}

