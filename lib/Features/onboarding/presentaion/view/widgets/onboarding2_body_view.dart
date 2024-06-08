import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hedg_app/Features/onboarding/presentaion/view/onboarding2.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class Onboarding2BodyView extends StatelessWidget {
  const Onboarding2BodyView({super.key});

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
                image: AssetImage(Assets.imagesOnboardingbackground2),
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
              SvgPicture.asset(Assets.imagesOnboardinglogo2),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              const Text(
                'Track Your Investments',
                style: AppStyles.styleBold20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'see your return on investments in the \n                      selected plans',
                style: AppStyles.styleMedium14
                    .copyWith(color: const Color(0xFF6E838F)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SvgPicture.asset(Assets.imagesOnboardingpointer2),
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
