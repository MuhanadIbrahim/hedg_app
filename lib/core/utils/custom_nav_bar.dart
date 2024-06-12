import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hedg_app/Features/home/presentation/view/home_view.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

int tappedIndex = -1;

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                Get.off(() => const HomeView(),
                    transition: Transition.fade, duration: kTabScrollDuration);

                setState(() {
                  tappedIndex = 0;
                });
              },
              child: tappedIndex == 0
                  ? CustomNavBarIcon(
                      title: 'Home',
                      icon: Assets.homeactiveicon,
                      style: AppStyles.styleRegular12.copyWith(fontSize: 8))
                  : CustomNavBarIcon(
                      title: 'Home',
                      icon: Assets.homeinactiveicon,
                      style: AppStyles.styleRegular12
                          .copyWith(fontSize: 8, color: Colors.grey))),
          GestureDetector(
              onTap: () {
                // Get.off(() => const HomeView(),
                //     transition: Transition.fade, duration: kTabScrollDuration);
                setState(() {
                  tappedIndex = 1;
                });
              },
              child: tappedIndex == 1
                  ? CustomNavBarIcon(
                      title: 'Wallet',
                      icon: Assets.walletactiveicon,
                      style: AppStyles.styleRegular12.copyWith(fontSize: 8))
                  : CustomNavBarIcon(
                      title: 'Wallet',
                      icon: Assets.walletinactiveicon,
                      style: AppStyles.styleRegular12
                          .copyWith(fontSize: 8, color: Colors.grey))),
          GestureDetector(
            onTap: () {
              // Get.off(() => const HomeView(),
              //     transition: Transition.fade, duration: kTabScrollDuration);
              setState(() {
                tappedIndex = 2;
              });
            },
            child: tappedIndex == 2
                ? CustomNavBarIcon(
                    title: 'Explore',
                    icon: Assets.exploreactiveicon,
                    style: AppStyles.styleRegular12.copyWith(fontSize: 8))
                : CustomNavBarIcon(
                    title: 'Expolre',
                    icon: Assets.exploreinactiveicon,
                    style: AppStyles.styleRegular12
                        .copyWith(fontSize: 8, color: Colors.grey)),
          ),
          GestureDetector(
            onTap: () {
              // Get.off(() => const HomeView(),
              //     transition: Transition.fade, duration: kTabScrollDuration);
              setState(() {
                tappedIndex = 3;
              });
            },
            child: tappedIndex == 3
                ? CustomNavBarIcon(
                    title: 'Profile',
                    icon: Assets.personalactiveicon,
                    style: AppStyles.styleRegular12.copyWith(fontSize: 8))
                : CustomNavBarIcon(
                    title: 'Profile',
                    icon: Assets.personalinactiveicon,
                    style: AppStyles.styleRegular12
                        .copyWith(fontSize: 8, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}

class CustomNavBarIcon extends StatelessWidget {
  final TextStyle style;
  final String title;
  final String icon;
  const CustomNavBarIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        Text(
          title,
          style: style,
        )
      ],
    );
  }
}
