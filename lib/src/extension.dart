import 'package:flutter/material.dart';

import '../blurrycontainer.dart';

/// Extension method for the `Widget` class that adds a `blurred` method.
extension BlurryContainerExtension<T extends Widget> on T {
  /// Returns a `BlurryContainer` widget with the specified properties and the current widget as its child.
  Widget blurry({
    double? height,
    double? width,
    double blur = 5,
    double elevation = 0,
    EdgeInsets padding = const EdgeInsets.all(8),
    Color color = Colors.transparent,
    Color shadowColor = Colors.black26,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(20)),
  }) {
    return BlurryContainer(
      height: height,
      width: width,
      blur: blur,
      elevation: elevation,
      padding: padding,
      color: color,
      shadowColor: shadowColor,
      borderRadius: borderRadius,
      child: this,
    );
  }
}
