import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/presentation/layout.dart';
import 'package:my_portfolio/presentation/view/education/educations.dart';
import 'package:my_portfolio/presentation/view/experience/experience_screen.dart';
import 'widget/heighlights.dart';
import 'widget/home_banner.dart';
import '../project/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutScreen(
      children: [
       const HomeBanner(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HighLightsInfo(),
              ExperienceScreen(),
              MyProjects(),
              Educations(),
            ],
          ),
        )
      ],
    );
  }
}
