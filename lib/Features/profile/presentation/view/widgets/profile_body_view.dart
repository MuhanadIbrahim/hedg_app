import 'package:flutter/material.dart';
import 'package:hedg_app/Features/profile/presentation/view/widgets/profile_app_bar.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ProfileAppBar(), ProfilelabelName()],
    );
  }
}

class ProfilelabelName extends StatelessWidget {
  const ProfilelabelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 345,
          height: 96,
          decoration: ShapeDecoration(
            color: Colors.white,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.profilelogo,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Jacob Smith',
                      style:
                          AppStyles.styleBold16.copyWith(color: Colors.black)),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
        ),
      ],
    );
  }
}
