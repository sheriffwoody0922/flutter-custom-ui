import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// The theme for ShadcnButton.
///
/// Use this class to override some properties to all buttons in just one place.
@immutable
class ShadcnButtonTheme {
  const ShadcnButtonTheme({
    this.applyIconColorFilter = true,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.boxShadow,
    this.gradient,
    this.textDecoration,
  });

  final bool applyIconColorFilter;
  final MouseCursor? cursor;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? hoverBackgroundColor;
  final Color? foregroundColor;
  final Color? hoverForegroundColor;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final bool? autofocus;
  final FocusNode? focusNode;
  final Color? pressedBackgroundColor;
  final Color? pressedForegroundColor;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final TextDecoration? textDecoration;

  static ShadcnButtonTheme lerp(
    ShadcnButtonTheme a,
    ShadcnButtonTheme b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return ShadcnButtonTheme(
      applyIconColorFilter: b.applyIconColorFilter,
      width: b.width,
      height: b.height,
      padding: EdgeInsets.lerp(a.padding, b.padding, t),
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
      hoverBackgroundColor:
          Color.lerp(a.hoverBackgroundColor, b.hoverBackgroundColor, t),
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t),
      hoverForegroundColor:
          Color.lerp(a.hoverForegroundColor, b.hoverForegroundColor, t),
      border: b.border,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t),
      autofocus: b.autofocus,
      focusNode: b.focusNode,
      pressedBackgroundColor:
          Color.lerp(a.pressedBackgroundColor, b.pressedBackgroundColor, t),
      pressedForegroundColor:
          Color.lerp(a.pressedForegroundColor, b.pressedForegroundColor, t),
      boxShadow: b.boxShadow,
      gradient: b.gradient,
      textDecoration: b.textDecoration,
      cursor: b.cursor,
    );
  }

  ShadcnButtonTheme copyWith({
    bool? applyIconColorFilter,
    MouseCursor? cursor,
    MouseCursor? disabledCursor,
    double? width,
    double? height,
    EdgeInsets? padding,
    Color? backgroundColor,
    Color? hoverBackgroundColor,
    Color? foregroundColor,
    Color? hoverForegroundColor,
    BoxBorder? border,
    BorderRadius? borderRadius,
    bool? autofocus,
    FocusNode? focusNode,
    Color? pressedBackgroundColor,
    Color? pressedForegroundColor,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    TextDecoration? textDecoration,
  }) {
    return ShadcnButtonTheme(
      applyIconColorFilter: applyIconColorFilter ?? this.applyIconColorFilter,
      cursor: cursor ?? this.cursor,
      width: width ?? this.width,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hoverBackgroundColor: hoverBackgroundColor ?? this.hoverBackgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      hoverForegroundColor: hoverForegroundColor ?? this.hoverForegroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      autofocus: autofocus ?? this.autofocus,
      focusNode: focusNode ?? this.focusNode,
      pressedBackgroundColor:
          pressedBackgroundColor ?? this.pressedBackgroundColor,
      pressedForegroundColor:
          pressedForegroundColor ?? this.pressedForegroundColor,
      boxShadow: boxShadow ?? this.boxShadow,
      gradient: gradient ?? this.gradient,
      textDecoration: textDecoration ?? this.textDecoration,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShadcnButtonTheme &&
        other.applyIconColorFilter == applyIconColorFilter &&
        other.cursor == cursor &&
        other.width == width &&
        other.height == height &&
        other.padding == padding &&
        other.backgroundColor == backgroundColor &&
        other.hoverBackgroundColor == hoverBackgroundColor &&
        other.foregroundColor == foregroundColor &&
        other.hoverForegroundColor == hoverForegroundColor &&
        other.border == border &&
        other.borderRadius == borderRadius &&
        other.autofocus == autofocus &&
        other.focusNode == focusNode &&
        other.pressedBackgroundColor == pressedBackgroundColor &&
        other.pressedForegroundColor == pressedForegroundColor &&
        listEquals(other.boxShadow, boxShadow) &&
        other.gradient == gradient &&
        other.textDecoration == textDecoration;
  }

  @override
  int get hashCode {
    return applyIconColorFilter.hashCode ^
        cursor.hashCode ^
        width.hashCode ^
        height.hashCode ^
        padding.hashCode ^
        backgroundColor.hashCode ^
        hoverBackgroundColor.hashCode ^
        foregroundColor.hashCode ^
        hoverForegroundColor.hashCode ^
        border.hashCode ^
        borderRadius.hashCode ^
        autofocus.hashCode ^
        focusNode.hashCode ^
        pressedBackgroundColor.hashCode ^
        pressedForegroundColor.hashCode ^
        boxShadow.hashCode ^
        gradient.hashCode ^
        textDecoration.hashCode;
  }
}
