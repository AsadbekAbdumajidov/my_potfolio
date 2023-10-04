import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

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
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
    autoPlayCurve: Curves.linear,
    enlargeCenterPage: true,
    enlargeFactor: 0.4,
  );
}
