import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/extension/for_context.dart';
import 'package:my_portfolio/data/models/project_model.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';

import 'widget/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Size ==> ${context.w}");
    double dSize = context.w > 1400 ? 1 : 0.7;
    double tSize = context.w > 700 ? 0.6 : 0.9;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My projects", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile:
              const ProjectsGridView(crossAxisCount: 1, childAspectRatio: 1),
          mobileLarge:
              const ProjectsGridView(childAspectRatio: 0.7, crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: tSize),
          desktop: ProjectsGridView(childAspectRatio: dSize),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      padding: const EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) =>
          ProjectCard(project: demoProjects[index]),
    );
  }
}
