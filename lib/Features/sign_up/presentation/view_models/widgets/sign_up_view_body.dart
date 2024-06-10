import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_background_log_view.dart';
import 'package:hedg_app/Features/sign_up/presentation/view_models/widgets/sign_up_view_body_content.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustombackgroundLogView(
          title: 'Create An Account',
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
          child: const Center(
            child: SingleChildScrollView(
              child: SignUpViewBodyContent(),
            ),
          ),
        )
      ],
    );
  }
}
