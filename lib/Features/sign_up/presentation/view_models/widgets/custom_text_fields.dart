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