import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';
import 'package:my_portfolio/presentation/components/responsiveness.dart';

CarouselOptions carouselOptions({required double viewportFraction}) {
  return CarouselOptions(
    height: 400,
    aspectRatio: 16 / 9,
    viewportFraction: viewportFraction,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayAnimationDuration: const Duration(milliseconds: 1000),
    autoPlayCurve: Curves.linear,
    enlargeCenterPage: true,
    enlargeFactor:Responsive.isMobile(navigatorKey.currentState!.context) ?  0.2 : 0.3,
  );
}
