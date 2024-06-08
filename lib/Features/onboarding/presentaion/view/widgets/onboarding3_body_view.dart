import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hedg_app/Features/onboarding/presentaion/view/onboarding2.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class Onboarding3BodyView extends StatelessWidget {
  const Onboarding3BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.39,
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboarding_background3.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              SvgPicture.asset(Assets.imagesOnboardinglogo3),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              const Text(
                'Calculate Before Investing',
                style: AppStyles.styleBold20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'calculate your potential growth to \n choose the perfect option for you',
                style: AppStyles.styleMedium14
                    .copyWith(color: const Color(0xFF6E838F)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SvgPicture.asset(Assets.imagesOnboardinpointer3),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text('Back',
                        style: AppStyles.styleBold16
                            .copyWith(color: const Color(0xFF1B506F))),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Onboarding2View(),
                          transition: Transition.rightToLeftWithFade,
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
