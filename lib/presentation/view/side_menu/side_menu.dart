import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';
import 'package:my_portfolio/presentation/view/side_menu/widget/social_networks.dart';

import 'widget/area_info_text.dart';
import 'widget/coding.dart';
import 'widget/knowledges.dart';
import 'widget/my_info.dart';
import 'widget/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Uzbekistan",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Tashkent",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text("DOWNLOAD CV",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: AppColors.bodyTextColor)),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset(AppIcons.iconDownload)
                          ],
                        ),
                      ),
                    ),
                    const SocialNetworks()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
