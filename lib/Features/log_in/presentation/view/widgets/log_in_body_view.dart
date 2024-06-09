import 'package:flutter/material.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: const Color(0xff1B506F),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.15,
      ),
      SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.85,
      )
    ]);
  }
}
