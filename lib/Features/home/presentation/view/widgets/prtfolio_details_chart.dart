import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_text_buttun.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class PortfolioDetailsChart extends StatelessWidget {
  const PortfolioDetailsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.36,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  Hi Ahmed!',
                    style: AppStyles.styleMedium14
                        .copyWith(fontWeight: FontWeight.w400)),
                Text('   Fri, 31 May, 2024',
                    style: AppStyles.styleRegular12.copyWith(fontSize: 10)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Investment Value',
                            style: AppStyles.styleMedium12),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('60,500 EGP', style: AppStyles.styleBold12),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Total Returns',
                            style: AppStyles.styleMedium12),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Total Returns',
                            style: AppStyles.styleMedium12),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('11,500 EGP', style: AppStyles.styleBold12),
                        Row(
                          children: [
                            SvgPicture.asset(Assets.greenarrow),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('12.2%',
                                style: AppStyles.styleBold12
                                    .copyWith(color: const Color(0xFF00BF54))),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SvgPicture.asset(Assets.greengraph)],
            )
          ]),
          const SizedBox(
            height: 5,
          ),
          CustomTextButtoun(
            onPressed: () {},
            title: 'Portfolio Details',
            width: 280,
            height: 35,
          )
        ],
      ),
    );
  }
}
