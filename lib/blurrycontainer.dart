library blurry_container;

import 'dart:ui';

import 'package:flutter/material.dart';

const kDemoText = Center(
  child: Text(
    'Child will be here.',
    style: TextStyle(
      fontSize: 25,
      color: Colors.white,
      letterSpacing: 2,
    ),
    textAlign: TextAlign.center,

  ),
);
const double kBlur = 1.0;
const EdgeInsetsGeometry kDefaultPadding = EdgeInsets.all(16);
const Color kDefaultColor = Colors.transparent;
const BorderRadius kBorderRadius = BorderRadius.all(Radius.circular(20));
const double kColorOpacity = 0.0;

class BlurryContainer extends StatelessWidget {
  final Widget child;
  final double blur;
  final double height, width;
  final EdgeInsetsGeometry padding;
  final Color bgColor;

  final BorderRadius borderRadius;

  //final double colorOpacity;

  BlurryContainer({
    this.child = kDemoText,
    this.blur = 5,
    this.height,
    this.width,
    this.padding = kDefaultPadding,
    this.bgColor = kDefaultColor,
    this.borderRadius = kBorderRadius,
    //this.colorOpacity = kColorOpacity,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          color: bgColor == Colors.transparent
              ? bgColor
              : bgColor.withOpacity(0.5),
          child: child,
        ),
      ),
    );
  }
}