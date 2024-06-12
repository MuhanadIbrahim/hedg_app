import 'package:flutter/material.dart';
import 'package:hedg_app/Features/profile/presentation/view/widgets/profile_body_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}

