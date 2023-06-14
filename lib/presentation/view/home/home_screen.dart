import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/presentation/layout.dart';
import 'widget/heighlights.dart';
import 'widget/home_banner.dart';
import 'widget/my_projects.dart';
import 'widget/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const LayoutScreen(
      children: [
        HomeBanner(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              HighLightsInfo(),
              MyProjects(),
              Recommendations(),
            ],
          ),
        )
      ],
    );
  }
}
