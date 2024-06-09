import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_background_log_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_main_content_filed_log_view.dart';

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
          child:  Center(
            child: CustomMainContentFieldLogView(child:Column( children: [],   )),
          ),
        )
      ],
    );
  }
}

