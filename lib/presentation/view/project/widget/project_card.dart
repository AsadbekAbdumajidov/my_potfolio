import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/core/widget/flush_bars.dart';
import 'package:my_portfolio/core/widget/network_image.dart';
import 'package:my_portfolio/data/models/project_model.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/cubit/hover/hover_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.title ?? "",
            maxLines: Responsive.isMobile(context) ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Divider(),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: AssetImageWidget2(
                  height: Responsive.isTablet(context) ? he(120) : he(200),
                  img: widget.project.img ?? ""),
            ),
          ),
          SizedBox(height: he(10)),
          Text(
            widget.project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 4 : 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          SizedBox(height: he(10)),
          BlocProvider(
            create: (_) => HoverCubit(),
            child:
                BlocBuilder<HoverCubit, HoverState>(builder: (context, state) {
              return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: state.hoverProject
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onHover: (value) =>
                      context.read<HoverCubit>().hoverProject(value),
                  onPressed: () {
                    if (widget.project.url != null) {
                      launchUrl(Uri.parse(widget.project.url ?? ""));
                    } else {
                      showMessage(context,
                          "Some projects do not have complete information.");
                    }
                  },
                  child: Text(
                    "See more >>",
                    style: TextStyle(
                      color: state.hoverProject
                          ? AppColors.blackColor
                          : AppColors.primaryColor,
                    ),
                  ));
            }),
          ),
        ],
      ),
    );
  }
}
