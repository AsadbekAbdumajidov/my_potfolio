import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/extension/for_context.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';
import 'package:my_portfolio/presentation/view/custom_appbar/custom_appbar_screen.dart';
import 'package:my_portfolio/presentation/view/side_menu/side_menu.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // We hide the appbar on desktop
      extendBodyBehindAppBar: true,
      appBar: Responsive.isDesktop(context) ? null : const CustomAppBatScreen(),
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? 0
                            : Responsive.isMobile(context) ||
                                    Responsive.isTablet(context)
                                ? he(53)
                                : he(120)),
                    child: Column(
                      children: [
                        ...children,
                        // our footer
                      ],
                    ),
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
