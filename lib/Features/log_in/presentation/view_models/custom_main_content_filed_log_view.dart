import 'package:flutter/material.dart';

class CustomMainContentFieldLogView extends StatelessWidget {
  const CustomMainContentFieldLogView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.68,
    );
  }
}
