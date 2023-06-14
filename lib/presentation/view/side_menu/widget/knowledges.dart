import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(text: "App Store · Flutter "),
        const KnowledgeText(text: "Bluetooth Low Energy"),
        const KnowledgeText(text: "Getx · TDD"),
        const KnowledgeText(text: "Cloud Firestore · OOP"),
        const KnowledgeText(text: "Android SDK"),
        const KnowledgeText(text: "NFC · Maps · Hive"),
        const KnowledgeText(text: "freezed · Notification"),
        const KnowledgeText(text: "Guid · Cubit "),
        const KnowledgeText(text: "Firebase · websoket"),
        const KnowledgeText(text: "dio · REST APIs"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.iconCheck),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
