// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/extension/for_context.dart';
import 'package:my_portfolio/data/models/experience_model.dart';
import 'package:my_portfolio/presentation/components/carousel_options.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/view/experience/widget/experience_card_widget.dart';

class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({super.key});
  InfiniteScrollController controller =
      InfiniteScrollController(initialItem: 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Responsive.isMobile(context) ? 14 : defaultPadding),
          child:
              Text("Experience", style: Theme.of(context).textTheme.titleLarge),
        ),
        const SizedBox(height: defaultPadding),
        SizedBox(
          height: Responsive.isMobile(context) ? 400 : 300,
          width: context.w,
          child: CarouselSlider.builder(
            itemCount: demoExperienceModels.length,
            itemBuilder: (_, __, pagev) {
              var experienceModel = demoExperienceModels[__];
              return ExperienceCardWidget(
                name: experienceModel.name ?? "",
                date: experienceModel.source ?? "",
                description: experienceModel.text ?? "",
                img: experienceModel.img ?? "",
              );
            },
            options: carouselOptions(viewportFraction: func(context)),
          ),
        ),
        const SizedBox(height: defaultPadding)
      ],
    );
  }

  double func(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 0.8;
    } else if (Responsive.isMobileLarge(context)) {
      return 0.7;
    } else if (Responsive.isMobileLarge(context)) {
      return 0.6;
    } else {
      return 0.54;
    }
  }
}
