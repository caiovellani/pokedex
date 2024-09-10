import 'package:flutter/material.dart';

class DefaultTextApp extends TextStyle {
  const DefaultTextApp({
    super.inherit = true,
    super.color,
    super.backgroundColor,
    super.fontStyle,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.fontFamilyFallback,
    super.package,
    super.overflow,
    FontWeight fontWeight = FontWeight.normal,
  }) : super(fontWeight: fontWeight, fontSize: 16);
}
