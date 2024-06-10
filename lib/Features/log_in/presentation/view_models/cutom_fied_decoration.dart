import 'package:flutter/material.dart';

InputDecoration customDecoration(String hintText,) {
    return InputDecoration(
      
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF6E838F),
        ));
  }