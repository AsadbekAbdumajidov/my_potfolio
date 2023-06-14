import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.blueColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(AppIcons.iconLinkedin),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(AppIcons.iconGithub),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppIcons.iconTg,
                height: he(24),
                colorFilter: const ColorFilter.mode(
                  AppColors.bodyTextColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
