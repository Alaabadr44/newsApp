import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    required this.hight,
    required this.width,
    required this.shapeBorder,
    required this.baseColor,
    required this.highlightColor,
  }) : super(key: key);

  final double hight;
  final double width;
  final ShapeBorder shapeBorder;
  final Color baseColor;
  final Color highlightColor;
  const ShimmerWidget.rectangular({
    this.width = double.infinity,
    required this.hight,
    required this.baseColor,
    required this.highlightColor,
  }) : this.shapeBorder = const RoundedRectangleBorder();

  const ShimmerWidget.circle({
    this.width = double.infinity,
    required this.hight,
    required this.baseColor,
    required this.highlightColor,
  }) : this.shapeBorder = const CircleBorder();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      enabled: true,
      child: Container(
        height: hight,
        width: width,
        decoration: ShapeDecoration(
          color: baseColor,
          shape: shapeBorder,
        ),
      ),
    );
  }
}
