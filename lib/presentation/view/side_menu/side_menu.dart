import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/presentation/view/side_menu/widget/download_sv_widget.dart';
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
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AreaInfoText(title: "Residence", text: "Uzbekistan"),
                    AreaInfoText(title: "City", text: "Tashkent"),
                    AreaInfoText(title: "Age", text: "21"),
                    Divider(),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    DownloadSvWidget(),
                    SocialNetworks(),
                    SizedBox(height: defaultPadding ),
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
