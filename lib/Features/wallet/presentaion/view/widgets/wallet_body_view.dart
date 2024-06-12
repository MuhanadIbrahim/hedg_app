import 'package:flutter/material.dart';
import 'package:hedg_app/Features/wallet/presentaion/view/widgets/custom_add_receipt.dart';

import 'custom_wallet_app_bar.dart';

class WalletBodyView extends StatelessWidget {
  const WalletBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomWalletAppBar(),
        SizedBox(
          height: 20,
        ),
        CustomAddReceipt()
      ],
    );
  }
}

