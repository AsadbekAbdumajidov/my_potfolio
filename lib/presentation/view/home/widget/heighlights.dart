import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/presentation/components/animated_counter.dart';
import '../../../../core/widget/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(value: 5, text: "+"),
            label: "GitLab projects",
          ),
          HeighLight(
            counter: AnimatedCounter(value: 30, text: "+"),
            label: "GitHub Projects",
          ),
        ],
      ),
    );
  }
}
