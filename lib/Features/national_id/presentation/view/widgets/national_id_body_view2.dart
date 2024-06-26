import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hedg_app/Features/home/presentation/view/home_view.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_app_bar_natinal_id_verfication.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_main_verfication_national_id.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_rishText.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_text_buttoun_verfication_id.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class NationIdVerficationBodyView2 extends StatelessWidget {
  const NationIdVerficationBodyView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarNationlVerfication(),
        const SizedBox(
          height: 15,
        ),
        SvgPicture.asset(Assets.nationlIdTracker2),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const SizedBox(width: 20),
            Text(
              'Add National ID Front',
              style: AppStyles.styleBold14.copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomMainVerficationNationalIdProcess(
          idcardpath: 'Back',
          idcheckpointer: Assets.addbutounnationalid,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'If you are facing any difficulties, please get in touch with us on ',
          style: TextStyle(
            color: Color(0xA51F1F1F),
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0.21,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomRishText(),
        const SizedBox(
          height: 15,
        ),
        CustomTextButtounVerficationId(
            onPressed: () {
              Get.to(() => const HomeView(),
                  transition: Transition.leftToRight,
                  duration: kTabScrollDuration);
            },
            title: 'Save')
      ],
    );
  }
}
