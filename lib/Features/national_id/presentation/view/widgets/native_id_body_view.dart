import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_app_bar_natinal_id_verfication.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_text_buttoun_verfication_id.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class NationalIdVerficationBodyView extends StatelessWidget {
  const NationalIdVerficationBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarNationlVerfication(),
        const SizedBox(
          height: 15,
        ),
        SvgPicture.asset(Assets.nationlIdTracker),
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
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
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
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'with us on ',
                style: TextStyle(
                  color: Color(0xA51F1F1F),
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.21,
                ),
              ),
              TextSpan(
                text: 'Whatsapp',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0.21,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextButtounVerficationId(onPressed: () {}, title: 'Save')
      ],
    );
  }
}
