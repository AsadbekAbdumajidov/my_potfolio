import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/data/models/education_model.dart';


class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.educationModel,
  }) : super(key: key);

  final EducationsModel educationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            educationModel.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(educationModel.source ?? ""),
          const Divider(),
          const SizedBox(height: defaultPadding),
          Text(
            educationModel.text ?? "",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
