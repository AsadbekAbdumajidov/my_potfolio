import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/extension/for_context.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/view/side_menu/side_menu.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // We hide the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: AppColors.bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  splashRadius: 1,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset(AppIcons.iconMenu,
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteColor, BlendMode.srcIn)),
                ),
              ),
              title: Row(
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Asadbek.",
                            style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(
                            text: "Pro",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: AppColors.primaryColor)),
                      ])),
                ],
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: context.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: defaultPadding),
                    child: SideMenu(),
                  ),
                ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
