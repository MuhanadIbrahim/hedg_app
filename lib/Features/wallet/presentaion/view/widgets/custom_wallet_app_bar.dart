import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class CustomWalletAppBar extends StatelessWidget {
  const CustomWalletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff10284A),
                )),
            Text(
              'Confirm Deposit',
              style: AppStyles.styleBold14
                  .copyWith(color: const Color(0xff10284A)),
            ),
          ],
        ),
      ),
    );
  }
}
