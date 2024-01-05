import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/core/widget/network_image.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';

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
        width: 650,
        padding:
            EdgeInsets.all(Responsive.isMobile(context) ? 14 : defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.titleSmall),
                Text(date),
                const Divider(),
              ],
            ),
            // Responsive.isMobile(context)
            //     ? const SizedBox.shrink()
            //     : const SizedBox(height: defaultPadding),
            Responsive.isMobile(context)
                ? Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: AssetImageWidget2(
                              height: 120, width: 120, img: img),
                        ),
                        Text(
                          description,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(height: 1.5),
                        )
                      ],
                    ),
                  )
                : Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: AssetImageWidget2(
                            height: 120, width: 120, img: img),
                      ),
                      SizedBox(width: wi(4)),
                      Expanded(
                          child: Text(
                        description,
                        maxLines: 8,
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
