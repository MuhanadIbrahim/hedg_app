import 'package:flutter/material.dart';
import 'package:hedg_app/Features/log_in/presentation/view_models/custom_text_buttun.dart';
import 'package:hedg_app/Features/wallet/presentaion/view/widgets/custom_add_receipt.dart';
import 'package:hedg_app/Features/wallet/presentaion/view/widgets/custom_date_deposited_chart.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

import 'custom_wallet_app_bar.dart';

class WalletBodyView extends StatelessWidget {
  const WalletBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomWalletAppBar(),
        const SizedBox(
          height: 20,
        ),
        const CustomAddReceipt(),
        const SizedBox(
          height: 20,
        ),
        const DateDepositedChart(),
        const SizedBox(
          height: 5,
        ),
        const Text('Funds will be added to your wallet after 1 working day!',
            textAlign: TextAlign.center, style: AppStyles.styleRegular12),
        const SizedBox(
          height: 5,
        ),
        CustomTextButtoun(onPressed: () {}, title: 'Send Details')
      ],
    );
  }
}
