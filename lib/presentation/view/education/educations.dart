import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/data/models/education_model.dart';
import 'package:my_portfolio/presentation/view/education/widget/education_cards.dart';

class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My educations", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoEducationsModels.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
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
