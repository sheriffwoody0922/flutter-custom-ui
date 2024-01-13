import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/src/theme/themes/components/button.dart';

@immutable
abstract class ShadcnBaseTheme {
  const ShadcnBaseTheme({
    required this.background,
    required this.foreground,
    required this.card,
    required this.cardForeground,
    required this.popover,
    required this.popoverForeground,
    required this.primary,
    required this.primaryForeground,
    required this.secondary,
    required this.secondaryForeground,
    required this.muted,
    required this.mutedForeground,
    required this.accent,
    required this.accentForeground,
    required this.destructive,
    required this.destructiveForeground,
    required this.border,
    required this.input,
    required this.ring,
    required this.radius,
    required this.brightness,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.destructiveButtonTheme,
    required this.outlineButtonTheme,
    required this.ghostButtonTheme,
    required this.linkButtonTheme,
  });

  final Color background;
  final Color foreground;
  final Color card;
  final Color cardForeground;
  final Color popover;
  final Color popoverForeground;
  final Color primary;
  final Color primaryForeground;
  final Color secondary;
  final Color secondaryForeground;
  final Color muted;
  final Color mutedForeground;
  final Color accent;
  final Color accentForeground;
  final Color destructive;
  final Color destructiveForeground;
  final Color border;
  final Color input;
  final Color ring;
  final BorderRadius radius;
  final Brightness brightness;
  final ShadcnButtonTheme? primaryButtonTheme;
  final ShadcnButtonTheme? secondaryButtonTheme;
  final ShadcnButtonTheme? destructiveButtonTheme;
  final ShadcnButtonTheme? outlineButtonTheme;
  final ShadcnButtonTheme? ghostButtonTheme;
  final ShadcnButtonTheme? linkButtonTheme;
}
