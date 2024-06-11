import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/custom_green_logo_app_bar.dart';

class HomeBodyview extends StatelessWidget {
  const HomeBodyview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomGreenLogoAppBar(),],
    );
  }
}
