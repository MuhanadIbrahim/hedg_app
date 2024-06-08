import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hedg_app/Features/onboarding/presentaion/view/onboarding2.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class Onboarding1BodyView extends StatelessWidget {
  const Onboarding1BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.2,
            bottom: MediaQuery.of(context).size.height * 0.39,
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/onboardingbackground1.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(
                      child: Text(
                    'Skip',
                    style: AppStyles.styleBold16,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              SvgPicture.asset(Assets.imagesOnboardinglogo1),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              const Text(
                'Shape Your Financial Future',
                style: AppStyles.styleBold20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'invest your money By Starting With \n HEDG, and secure financial freedom',
                style: AppStyles.styleMedium14
                    .copyWith(color: const Color(0xFF6E838F)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SvgPicture.asset(Assets.imagesOnboardingpointer1),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Onboarding2View(),
                          transition: Transition.rightToLeft,
                          duration: kTabScrollDuration);
                    },
                    child: SvgPicture.asset(
                      Assets.imagesOnboardingcontinuebutton,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
