import 'package:flutter/material.dart';
import 'package:hedg_app/Features/explore/presentation/view/widgets/explore_body_view.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExploreBodyView(),
    );
  }
}
