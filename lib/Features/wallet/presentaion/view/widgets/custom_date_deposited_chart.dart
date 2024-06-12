import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class DateDepositedChart extends StatelessWidget {
  const DateDepositedChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.32,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1910284A),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomInputFieldDataDepositedModel(
              hintText: '2023/09/25',
              title: 'Date Deposited',
            ),
            CustomInputFieldDataDepositedModel(
              hintText: 'Enter Amount',
              title: 'Amount Deposited',
            ),
            CustomInputFieldDataDepositedModel(
              hintText: 'Enter Your Instapay Address',
              title: 'Instapay Address',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputFieldDataDepositedModel extends StatelessWidget {
  final String title;
  final String hintText;
  const CustomInputFieldDataDepositedModel(
      {super.key, required this.title, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium12),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
            ),
            border: const OutlineInputBorder(),
            labelText: hintText,
            hintStyle: AppStyles.styleBold12.copyWith(fontSize: 4),
            isDense: true, // Added this
            contentPadding: const EdgeInsets.all(8), // Added this
          ),
          // customDecoration('Email', null)
        )
      ],
    );
  }
}
