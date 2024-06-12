import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

TextField customPasswordTextField() {
  return const TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(Icons.remove_red_eye_outlined),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
      ),
      border: OutlineInputBorder(),
      labelText: 'Password',
      isDense: true, // Added this
      contentPadding: EdgeInsets.all(8), // Added this
    ),
    // customDecoration(
    //     'Password', const Icon(Icons.remove_red_eye_sharp))
  );
}

TextField customEmailTextField() {
  return const TextField(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
      ),
      border: OutlineInputBorder(),
      labelText: 'Email',
      isDense: true, // Added this
      contentPadding: EdgeInsets.all(8), // Added this
    ),
    // customDecoration('Email', null)
  );
}

TextField customFullnameTextfield() {
  return TextField(
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.grey, width: 0.5),
      ),
      border: const OutlineInputBorder(),
      labelText: 'Full Name',
      hintStyle: AppStyles.styleBold14.copyWith(
        color: const Color(0xFF10284A),
      ),
      isDense: true, // Added this
      contentPadding: const EdgeInsets.all(8), // Added this
    ),
    // customDecoration('Full Name', null)
  );
}

Container customPhoneNumber() {
  return Container(
      height: 50.0,
      width: double.infinity, // Set container height (adjust as needed)
      padding: const EdgeInsets.all(2.0), // Add padding for content
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300, // Set border color
          width: 0.5, // Set border width
        ),
        borderRadius:
            BorderRadius.circular(8.0), // Add rounded corners (optional)
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Flag.fromCode(FlagsCode.EG, height: 20.0, width: 20.0),
          const SizedBox(
            width: 10,
          ),
          const Text('+20'),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 1.0, // Set divider width
            color: Colors.grey[300], // Set divider color
            height: double.infinity, // Expands vertically
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Phone Number', style: AppStyles.styleMedium14),
        ],
      ));
}
