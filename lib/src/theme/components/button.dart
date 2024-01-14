import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/src/components/button.dart';

/// The theme for ShadcnButton.
///
/// Use this class to override some properties to all buttons in just one place.
@immutable
class ShadcnButtonTheme {
  const ShadcnButtonTheme({
    this.inherit = true,
    this.applyIconColorFilter = true,
    this.cursor,
    this.size = ShadcnButtonSize.$default,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius = const BorderRadius.all(Radius.circular(6)),
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.boxShadow,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.focusBuilder,
  });

  final bool inherit;
  final bool applyIconColorFilter;
  final MouseCursor? cursor;
  final ShadcnButtonSize? size;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? hoverBackgroundColor;
  final Color? foregroundColor;
  final Color? hoverForegroundColor;
  final BoxBorder? border;
  final BorderRadius borderRadius;
  final Color? pressedBackgroundColor;
  final Color? pressedForegroundColor;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final TextDecoration? textDecoration;
  final TextDecoration? hoverTextDecoration;
  final FocusWidgetBuilder? focusBuilder;

  static ShadcnButtonTheme lerp(
    ShadcnButtonTheme a,
    ShadcnButtonTheme b,
    double t,
  ) {
    if (identical(a, b)) return a;
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
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      pressedBackgroundColor:
          Color.lerp(a.pressedBackgroundColor, b.pressedBackgroundColor, t),
      pressedForegroundColor:
          Color.lerp(a.pressedForegroundColor, b.pressedForegroundColor, t),
      boxShadow: b.boxShadow,
      gradient: b.gradient,
      textDecoration: b.textDecoration,
      hoverTextDecoration: b.hoverTextDecoration,
      cursor: b.cursor,
      focusBuilder: b.focusBuilder,
      size: b.size,
    );
  }

  ShadcnButtonTheme copyWith({
    bool? applyIconColorFilter,
    MouseCursor? cursor,
    MouseCursor? disabledCursor,
    ShadcnButtonSize? size,
    double? width,
    double? height,
    EdgeInsets? padding,
    Color? backgroundColor,
    Color? hoverBackgroundColor,
    Color? foregroundColor,
    Color? hoverForegroundColor,
    BoxBorder? border,
    BorderRadius? borderRadius,
    Color? pressedBackgroundColor,
    Color? pressedForegroundColor,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    TextDecoration? textDecoration,
    TextDecoration? hoverTextDecoration,
    FocusWidgetBuilder? focusBuilder,
  }) {
    return ShadcnButtonTheme(
      applyIconColorFilter: applyIconColorFilter ?? this.applyIconColorFilter,
      cursor: cursor ?? this.cursor,
      size: size ?? this.size,
      width: width ?? this.width,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hoverBackgroundColor: hoverBackgroundColor ?? this.hoverBackgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      hoverForegroundColor: hoverForegroundColor ?? this.hoverForegroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      pressedBackgroundColor:
          pressedBackgroundColor ?? this.pressedBackgroundColor,
      pressedForegroundColor:
          pressedForegroundColor ?? this.pressedForegroundColor,
      boxShadow: boxShadow ?? this.boxShadow,
      gradient: gradient ?? this.gradient,
      textDecoration: textDecoration ?? this.textDecoration,
      hoverTextDecoration: hoverTextDecoration ?? this.hoverTextDecoration,
      focusBuilder: focusBuilder ?? this.focusBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShadcnButtonTheme &&
        other.applyIconColorFilter == applyIconColorFilter &&
        other.cursor == cursor &&
        other.size == size &&
        other.width == width &&
        other.height == height &&
        other.padding == padding &&
        other.backgroundColor == backgroundColor &&
        other.hoverBackgroundColor == hoverBackgroundColor &&
        other.foregroundColor == foregroundColor &&
        other.hoverForegroundColor == hoverForegroundColor &&
        other.border == border &&
        other.borderRadius == borderRadius &&
        other.pressedBackgroundColor == pressedBackgroundColor &&
        other.pressedForegroundColor == pressedForegroundColor &&
        listEquals(other.boxShadow, boxShadow) &&
        other.gradient == gradient &&
        other.textDecoration == textDecoration &&
        other.hoverTextDecoration == hoverTextDecoration &&
        other.focusBuilder == focusBuilder;
  }

  @override
  int get hashCode {
    return applyIconColorFilter.hashCode ^
        cursor.hashCode ^
        size.hashCode ^
        width.hashCode ^
        height.hashCode ^
        padding.hashCode ^
        backgroundColor.hashCode ^
        hoverBackgroundColor.hashCode ^
        foregroundColor.hashCode ^
        hoverForegroundColor.hashCode ^
        border.hashCode ^
        borderRadius.hashCode ^
        pressedBackgroundColor.hashCode ^
        pressedForegroundColor.hashCode ^
        boxShadow.hashCode ^
        gradient.hashCode ^
        textDecoration.hashCode ^
        hoverTextDecoration.hashCode ^
        focusBuilder.hashCode;
  }
}
