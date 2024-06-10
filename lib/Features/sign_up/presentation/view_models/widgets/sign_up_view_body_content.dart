import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_main_content_filed_log_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_text_buttun.dart';
import 'package:hedg_app/Features/sign_up/presentation/view_models/widgets/custom_text_fields.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class SignUpViewBodyContent extends StatelessWidget {
  const SignUpViewBodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMainContentFieldLogView(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customFullnameTextfield(),
          const SizedBox(
            height: 15,
          ),
          customEmailTextField(),
          const SizedBox(
            height: 15,
          ),
          customPasswordTextField(),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
              ),
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(8), // Added this
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextButtoun(
            title: 'Sign Up',
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Or',
            style: AppStyles.styleMedium12,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesGooglebuttoun),
              const SizedBox(
                width: 15,
              ),
              SvgPicture.asset(Assets.imagesApplebuttoun)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Have An Account ?  ',
                    style: AppStyles.styleMedium14
                        .copyWith(color: const Color(0xFF1B506F))),
                TextSpan(
                    text: 'Log In',
                    style: AppStyles.styleBold14
                        .copyWith(color: const Color(0xFF00BF54))),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  
}
