import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extension/for_context.dart';
import 'package:my_portfolio/core/utils/size_konfig.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({super.key, required this.img,  this.height, this.width});
  final String img;
  final double? height;
  final double? width;


  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      height: height ?? he(100),
      width:width ?? context.w ,
      fit: BoxFit.cover,
      errorWidget: (_, __, ___) =>
          Padding(
            padding: EdgeInsets.symmetric(vertical: he(10)),
            child: Image.asset('assets/images/ic_under_construction.png')),
      placeholder: (_, __) =>
          Padding(
            padding: EdgeInsets.symmetric(vertical: he(10)),
            child:Image.asset('assets/images/ic_under_construction.png')),
    );
  }
}
