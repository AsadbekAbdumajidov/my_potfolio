import 'package:flutter/material.dart';
import 'package:my_portfolio/core/themes/app_images.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.personalInfo),
            ),
            const Spacer(),
            Text(
              "Asadbek Abdumajidov",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Flutter Developer & Founder of \n The Flutter Way",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
