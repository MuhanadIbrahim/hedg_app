import 'package:flutter/material.dart';
import 'package:hedg_app/Features/wallet/presentaion/view/widgets/wallet_body_view.dart';
import 'package:hedg_app/core/utils/custom_nav_bar.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Expanded(child: WalletBodyView()), CustomNavBar()],
      ),
    );
  }
}
