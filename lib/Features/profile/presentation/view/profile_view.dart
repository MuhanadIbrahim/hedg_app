import 'package:flutter/material.dart';
import 'package:hedg_app/Features/profile/presentation/view/widgets/profile_body_view.dart';
import 'package:hedg_app/core/utils/custom_nav_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Expanded(child: ProfileViewBody()), CustomNavBar()],
      ),
    );
  }
}
