import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumOnSecondaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumOnSecondaryContainer_2 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.53),
      );
  static get bodyMediumOnSecondaryContainer_3 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.75),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.75),
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeTeal700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.75),
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleMediumTeal700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal700,
        fontSize: 18.fSize,
      );
  static get titleMediumTeal700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal700.withOpacity(0.5),
      );
  static get titleMediumTeal700_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal700,
      );
}

extension on TextStyle {
  TextStyle get proximaNova {
    return copyWith(
      fontFamily: 'Proxima Nova',
    );
  }

  TextStyle get proximaNovaAlt {
    return copyWith(
      fontFamily: 'Proxima Nova Alt',
    );
  }

  TextStyle get noeDisplay {
    return copyWith(
      fontFamily: 'Noe Display',
    );
  }
}
