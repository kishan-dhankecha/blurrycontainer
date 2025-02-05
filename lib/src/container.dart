import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

/// A widget that creates a container with a blurred background.
///
/// The [child] widget is displayed over the blurred background.
class BlurryContainer extends StatelessWidget {
  /// This widget will be shown over blurry container.
  final Widget child;

  /// [height] of blurry container.
  final double? height;

  /// [width] of blurry container.
  final double? width;

  /// [elevation] of blurry container.
  ///
  /// Defaults to `0`.
  final double elevation;

  /// Shadow color of container.
  ///
  /// Defaults to `Colors.black24`.
  final Color shadowColor;

  /// The [blur] will control the amount of sigmaX and sigmaY.
  ///
  /// Defaults to `5`.
  final double blur;

  /// [padding] adds the [EdgeInsetsGeometry] to given [child].
  ///
  /// Defaults to `const EdgeInsets.all(8)`.
  final EdgeInsetsGeometry padding;

  /// Background color of container.
  ///
  /// Defaults to `Colors.transparent`.
  final Color color;

  /// [borderRadius] of blurry container.
  final BorderRadius borderRadius;

  const BlurryContainer({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.shadowColor = Colors.black26,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) : super(key: key);

  /// Creates a blurry container whose [width] and [height] are equal.
  const BlurryContainer.square({
    Key? key,
    required this.child,
    double? dimension,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.shadowColor = Colors.black26,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  })  : width = dimension,
        height = dimension,
        super(key: key);

  /// Creates a blurry container that will become as large as its parent allows.
  const BlurryContainer.expand({
    Key? key,
    required this.child,
    this.blur = 5,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(8),
    this.color = Colors.transparent,
    this.shadowColor = Colors.black26,
    this.borderRadius = BorderRadius.zero,
  })  : width = double.infinity,
        height = double.infinity,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      shadowColor: shadowColor,
      color: Colors.transparent,
      borderRadius: borderRadius,
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          color: color,
          child: child,
        ),
      ),
    );
  }
}
