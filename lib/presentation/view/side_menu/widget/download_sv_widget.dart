import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
import 'package:my_portfolio/core/themes/app_icons.dart';
import 'package:my_portfolio/core/themes/app_pdf.dart';
import 'package:my_portfolio/presentation/cubit/hover/hover_cubit.dart';
import 'package:universal_html/html.dart' as html;
class DownloadSvWidget extends StatelessWidget {
  const DownloadSvWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HoverCubit(),
      child: BlocBuilder<HoverCubit, HoverState>(builder: (context, state) {
        return InkWell(
          splashFactory: NoSplash.splashFactory,
          highlightColor: AppColors.transparent,
          onTap: _downloadPdf,
          onHover: (value) => context.read<HoverCubit>().hoverProject(value),
          child: FittedBox(
            child: Row(
              children: [
                Text("DOWNLOAD CV",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: state.hoverProject
                            ? AppColors.primaryColor
                            : AppColors.bodyTextColor)),
                const SizedBox(width: defaultPadding / 2),
                SvgPicture.asset(
                  AppIcons.iconDownload,
                  colorFilter: ColorFilter.mode(
                    state.hoverProject
                        ? AppColors.primaryColor
                        : AppColors.bodyTextColor,
                    BlendMode.srcIn,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
  Future<void> _downloadPdf() async {
    // Load the PDF asset as bytes
    final ByteData data = await rootBundle.load(AppPdf.pdf);
    final Uint8List bytes = data.buffer.asUint8List();

    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    html.AnchorElement(href: url)
      ..setAttribute('download', 'Asadbek Abdumajidov.pdf')
      ..click();

    html.Url.revokeObjectUrl(url);
  }
}
