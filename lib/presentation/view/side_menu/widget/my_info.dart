import 'package:flutter/material.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
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
        color: AppColors.secondaryColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                AppImages.personalInfo,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Text("Asadbek Abdumajidov",
                style: Theme.of(context).textTheme.titleSmall),
            Text("Flutter Middle Developer at dynamicsoft.uz",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.bodyTextColor)),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
