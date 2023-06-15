import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/data/models/project_model.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/cubit/hover/hover_cubit.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: AppColors.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Divider(),
          const Spacer(),
          Text(
            widget.project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          BlocProvider(
            create: (_) => HoverCubit(),
            child:
                BlocBuilder<HoverCubit, HoverState>(builder: (context, state) {
              return state.hoverProject
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onHover: (value) =>
                          context.read<HoverCubit>().hoverProject(value),
                      onPressed: () {},
                      child: const Text(
                        "Read More >>",
                        style: TextStyle(
                          color: AppColors.blackColor,
                        ),
                      ))
                  : TextButton(
                      onHover: (value) =>
                          context.read<HoverCubit>().hoverProject(value),
                      onPressed: () {},
                      child: const Text(
                        "Read More >>",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    );
            }),
          ),
        ],
      ),
    );
  }
}
