import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_background_log_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_main_content_filed_log_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_text_buttun.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/cutom_fied_decoration.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

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
          child: Center(
            child: CustomMainContentFieldLogView(
                child: Column(
              children: [
                TextField(decoration: customDecoration('Email')),
                const SizedBox(
                  height: 15,
                ),
                TextField(decoration: customDecoration('Password')),
                const SizedBox(
                  height: 15,
                ),
                Text('Forgot Your Password?',
                    style: AppStyles.styleBold12.copyWith(
                      color: const Color(0xFF1B506F),
                    )),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextButtoun(
                  title: 'Log In',
                )
              ],
            )),
          ),
        )
      ],
    );
  }
}

