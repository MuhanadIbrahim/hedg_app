import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hedg_app/Features/national_id/presentation/view/widgets/custom_text_buttoun_verfication_id.dart';
import 'package:hedg_app/Features/profile/presentation/view/widgets/profile_app_bar.dart';
import 'package:hedg_app/Features/profile/presentation/view/widgets/profile_label_name.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

import '../../../../sign_up/presentation/view_models/widgets/custom_text_fields.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileAppBar(),
          const ProfilelabelName(),
          const SizedBox(
            height: 150,
          ),
          CustomTextButtounVerficationId(onPressed: () {}, title: 'Save'),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

class ProfileDetailsChart extends StatelessWidget {
  const ProfileDetailsChart({super.key});

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Profile Details', style: AppStyles.styleBold14),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
                border: const OutlineInputBorder(),
                hintText: 'Jacob Smith',
                hintStyle: AppStyles.styleMedium12.copyWith(fontSize: 10),
                isDense: true, // Added this
                contentPadding: const EdgeInsets.all(8), // Added this
              ),
              // customDecoration('Email', null)
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 0.5),
                ),
                border: const OutlineInputBorder(),
                hintText: 'jacobsmith@example.com',
                hintStyle: AppStyles.styleMedium12.copyWith(fontSize: 10),
                isDense: true, // Added this
                contentPadding: const EdgeInsets.all(8), // Added this
              ),
              // customDecoration('Email', null)
            ),
            const SizedBox(
              height: 20,
            ),
            customPhoneNumber(),
          ],
        ),
      ),
    );
  }
}
