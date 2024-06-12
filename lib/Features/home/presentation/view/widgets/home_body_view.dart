import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/Features/home/presentation/view/widgets/custom_finial_plan.dart';
import 'package:hedg_app/Features/home/presentation/view/widgets/prtfolio_details_chart.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';
import 'package:hedg_app/core/utils/custom_green_logo_app_bar.dart';

class HomeBodyview extends StatelessWidget {
  const HomeBodyview({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomGreenLogoAppBar(),
          SizedBox(
            height: 20,
          ),
          PortfolioDetailsChart(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Pensions',
                  style: AppStyles.styleBold14,
                ),
                SizedBox(
                  width: 103.56,
                  height: 20.70,
                  child: Opacity(
                    opacity: 0.51,
                    child: Center(
                      child: Text(
                        'Orders',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomFinialPlan(
              title: 'Conservative Plan',
              image: Assets.imagesConservativeplanlogo,
              redGreenPrice: Assets.greenprice,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomFinialPlan(
              title: 'Customized Plan',
              image: Assets.imagesCustomizedplanlogo,
              redGreenPrice: Assets.redprice,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CustomFinialPlan(
              title: 'Aggressive Plan',
              image: Assets.imagesAggressiveplanlogo,
              redGreenPrice: Assets.greenprice,
            ),
          ),
        ],
      ),
    );
  }
}
