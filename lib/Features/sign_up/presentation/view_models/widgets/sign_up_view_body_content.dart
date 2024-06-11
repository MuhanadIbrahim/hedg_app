import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hedg_app/Features/log_in/presentation/view/log_in_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_main_content_filed_log_view.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_text_buttun.dart';
import 'package:hedg_app/Features/national_id/presentation/view/national_id_view.dart';
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
          customPhoneNumber(),
          const SizedBox(
            height: 15,
          ),
          CustomTextButtoun(
            onPressed: () {
              Get.to(() => const NationalIdVerficationView(),
                  transition: Transition.fade, duration: kTabScrollDuration);
            },
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
          GestureDetector(
            onTap: () {
              Get.to(() => const LoginView(),
                  transition: Transition.fade, duration: kTabScrollDuration);
            },
            child: RichText(
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
          ),
        ],
      ),
    ));
  }
}
