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
        const KnowledgeText(text: "Dart · Flutter SDK "),
        const KnowledgeText(text: "Git · Git hub · Git Lab "),
        const KnowledgeText(text: "Dio · Retrofit2 · HTTP"),
        const KnowledgeText(text: "Bluetooth Low Energy"),
        const KnowledgeText(text: "Getx · Flutter Block"),
        const KnowledgeText(text: "DRY · SOLID"),
        const KnowledgeText(text: "Folder structure"),
        const KnowledgeText(text: "Cloud Firestore · OOP"),
        const KnowledgeText(text: "NFC · Maps · Hive"),
        const KnowledgeText(text: "freezed · Notification"),
        const KnowledgeText(text: "Guid · Cubit "),
        const KnowledgeText(text: "Widgets · Animation "),
        const KnowledgeText(text: "Firebase · Websoket"),
        const KnowledgeText(text: "Swagger · Trello"),
        const KnowledgeText(text: "Flutter Web · CI/CD"),
        const KnowledgeText(text: "Cloud payments"),
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
