import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/presentation/cubit/hover/hover_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocProvider(
              create: (_) => HoverCubit(),
              child: BlocBuilder<HoverCubit, HoverState>(
                  builder: (context, state) {
                return InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: AppColors.transparent,
                  onHover: (value) =>
                      context.read<HoverCubit>().hoverProject(value),
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://www.linkedin.com/in/asadbek-abdumajidov-aa1b33233"));
                  },
                  child: SvgPicture.asset(
                    AppIcons.iconLinkedin,
                    colorFilter: ColorFilter.mode(
                      state.hoverProject
                          ? AppColors.primaryColor
                          : AppColors.bodyTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                );
              }),
            ),
            BlocProvider(
              create: (_) => HoverCubit(),
              child: BlocBuilder<HoverCubit, HoverState>(
                  builder: (context, state) {
                return InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: AppColors.transparent,
                  onHover: (value) =>
                      context.read<HoverCubit>().hoverProject(value),
                  onTap: () {
                    launchUrl(
                        Uri.parse("https://github.com/AsadbekAbdumajidov"));
                  },
                  child: SvgPicture.asset(
                    AppIcons.iconGithub,
                    colorFilter: ColorFilter.mode(
                      state.hoverProject
                          ? AppColors.primaryColor
                          : AppColors.bodyTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                );
              }),
            ),
            BlocProvider(
              create: (_) => HoverCubit(),
              child: BlocBuilder<HoverCubit, HoverState>(
                  builder: (context, state) {
                return InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: AppColors.transparent,
                  onHover: (value) =>
                      context.read<HoverCubit>().hoverProject(value),
                  onTap: () {
                    launchUrl(Uri.parse("https://t.me/asadbek_devv"));
                  },
                  child: SvgPicture.asset(
                    AppIcons.iconTg,
                    height: he(24),
                    colorFilter: ColorFilter.mode(
                      state.hoverProject
                          ? AppColors.primaryColor
                          : AppColors.bodyTextColor,
                      BlendMode.srcIn,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
