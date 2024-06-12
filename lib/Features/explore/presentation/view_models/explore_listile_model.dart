import 'package:flutter/material.dart';

class ExploreListTileModel extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color color;
  // ignore: non_constant_identifier_names
  const ExploreListTileModel(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 96,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF10284A),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF10284A),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset(
              image,
              width: 60,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
