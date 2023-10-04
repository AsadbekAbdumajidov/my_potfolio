import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/core/widget/network_image.dart';

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget(
      {super.key,
      required this.name,
      required this.date,
      required this.description,
      required this.img});
  final String name;
  final String date;
  final String description;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: wi(400),
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(date),
            const Divider(),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: NetworkImageWidget(
                      height: he(100), width: he(100), img: img),
                ),
                SizedBox(width: wi(4)),
                Expanded(
                    child: Text(
                  description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(height: 1.5),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
