import 'package:flutter/material.dart';

class CustomMainContentFieldLogView extends StatelessWidget {
  Widget? child;
   CustomMainContentFieldLogView({
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
          color: const Color(0xffffffff),
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 1),
              color: Color(0x115a6cea),
              spreadRadius: 15,
              blurRadius: 10)
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.68,
      child: child,
    );
  }
}
