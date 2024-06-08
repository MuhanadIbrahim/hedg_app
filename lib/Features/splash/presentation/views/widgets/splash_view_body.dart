import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hedg_app/Features/onboarding/presentaion/view/onboarding1.dart';
import 'package:hedg_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:hedg_app/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatoToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(
          flex: 1,
        ),
        Image.asset(
          Assets.imagesGreenlogo,
          width: 79.55,
          height: 93.21,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: 15,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }

  void navigatoToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (_) => const Onboarding1Screan()));
        Get.to(() => const Onboarding1View(),
            transition: Transition.fade, duration: kTabScrollDuration);
      },
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
