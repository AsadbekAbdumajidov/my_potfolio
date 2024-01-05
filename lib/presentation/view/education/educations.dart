import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/data/models/education_model.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/view/education/widget/education_cards.dart';

class Educations extends StatelessWidget {
  const Educations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isMobile(context) ? 14 : defaultPadding),
              child: Text("My educations",
                  style: Theme.of(context).textTheme.titleLarge)),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoEducationsModels.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      right: Responsive.isMobile(context) ? 14 : defaultPadding),
                  child: EducationCard(
                      educationModel: demoEducationsModels[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
