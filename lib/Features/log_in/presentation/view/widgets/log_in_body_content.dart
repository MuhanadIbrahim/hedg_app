import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../view_models/custom_main_content_filed_log_view.dart';
import '../../view_models/custom_text_buttun.dart';
import '../../view_models/cutom_fied_decoration.dart';

class LogInBodyContent extends StatelessWidget {
  const LogInBodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMainContentFieldLogView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                    text: 'Don\'t Have An Account ?  ',
                    style: AppStyles.styleMedium14
                        .copyWith(color: const Color(0xFF1B506F))),
                TextSpan(
                    text: 'Sign Up',
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
