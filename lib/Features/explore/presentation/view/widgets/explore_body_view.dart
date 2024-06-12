import 'package:flutter/material.dart';
import 'package:hedg_app/Features/explore/presentation/view_models/explore_listile_model.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/custom_green_logo_app_bar.dart';
import 'package:hedg_app/core/utils/custom_nav_bar.dart';

class ExploreBodyView extends StatelessWidget {
  const ExploreBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomGreenLogoAppBar(),
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            ExploreListTileModel(
              title: 'Conservative plan',
              subtitle: 'Save more with low risks',
              image: Assets.conserativelogoisolated,
              color: Color(0x3300BF54),
            ),
            SizedBox(
              height: 10,
            ),
            ExploreListTileModel(
              title: 'Moderated plan',
              subtitle: 'Balanced risk and return',
              image: Assets.moderatedplanisoalted,
              color: Color(0x33FEB532),
            ),
            SizedBox(
              height: 10,
            ),
            ExploreListTileModel(
              title: 'Aggressive plan',
              subtitle: 'High interest with high risk',
              image: Assets.aggressiveplanisoalted,
              color: Color(0x33E45353),
            ),
            SizedBox(
              height: 10,
            ),
            ExploreListTileModel(
              title: 'Do it your self plan',
              subtitle: 'Customize your plan ',
              image: Assets.doityourselfisoalted,
              color: Color(0x33098AD3),
            ),
            SizedBox(
              height: 10,
            ),
            ExploreListTileModel(
              title: 'Need guidance ?',
              subtitle: 'Choose the plan that suits you',
              image: Assets.needguidanceisoalted,
              color: Color(0x331B506F),
            ),
          ]),
        ),
        Spacer(
          flex: 1,
        ),
        CustomNavBar()
      ],
    );
  }
}

