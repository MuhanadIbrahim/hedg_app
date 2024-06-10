import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hedg_app/Features/log_in/presentation/view/log_in_view.dart';
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
          Container(
              height: 50.0,
              width: double.infinity, // Set container height (adjust as needed)
              padding: const EdgeInsets.all(2.0), // Add padding for content
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Set border color
                  width: 0.5, // Set border width
                ),
                borderRadius: BorderRadius.circular(
                    8.0), // Add rounded corners (optional)
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Flag.fromCode(FlagsCode.EG, height: 20.0, width: 20.0),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('+20'),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1.0, // Set divider width
                    color: Colors.grey[300], // Set divider color
                    height: double.infinity, // Expands vertically
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Phone Number', style: AppStyles.styleMedium14),
                ],
              )),
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
