import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/custom_nav_bar.dart';

import 'widgets/home_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [Expanded(child: HomeBodyview()), CustomNavBar()]),
    );
  }
}
