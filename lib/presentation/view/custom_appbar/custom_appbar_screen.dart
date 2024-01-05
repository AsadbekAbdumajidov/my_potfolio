import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';

class CustomAppBatScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 20),
          child: Container(color: Colors.transparent),
        ),
      ),
      elevation: 20,
      backgroundColor: AppColors.bgColor.withOpacity(.4),
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: SvgPicture.asset(AppIcons.iconMenu,
              colorFilter: const ColorFilter.mode(
                  AppColors.whiteColor, BlendMode.srcIn)),
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Asadbek.",
                    style: Theme.of(context).textTheme.titleMedium),
                TextSpan(
                    text: "Pro",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColors.primaryColor)),

              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
