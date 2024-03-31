import 'package:red_dot_ent/utils/constants/exports.dart';

class ETextTheme {
  ETextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // Headlines
    headlineLarge: GoogleFonts.anton(
      textStyle: const TextStyle().copyWith(
          fontSize: ESizes.fontSizeHeadline * 2,
          fontWeight: FontWeight.bold,
          color: EColors.textPrimary),
    ),
    headlineMedium: GoogleFonts.anton(
      textStyle: const TextStyle().copyWith(
          fontSize: ESizes.fontSizeHeadline - 10,
          fontWeight: FontWeight.bold,
          color: EColors.textPrimary),
    ),

    // headlineMedium: const TextStyle().copyWith(
    //     fontSize: 24, fontWeight: FontWeight.w600, color: EColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: EColors.textPrimary),

    // Titles
    titleLarge: GoogleFonts.spaceGrotesk(
      textStyle: const TextStyle().copyWith(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: EColors.textPrimary),
    ),
    // titleLarge: const TextStyle().copyWith(
    //     fontSize: 16, fontWeight: FontWeight.w600, color: EColors.textPrimary),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: EColors.textPrimary),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: EColors.textPrimary),

    // Body
    bodyLarge: GoogleFonts.spaceGrotesk(
      textStyle: const TextStyle().copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: EColors.textPrimary),
    ),
    // bodyLarge: const TextStyle().copyWith(
    //     fontSize: 14, fontWeight: FontWeight.w500, color: EColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: EColors.textPrimary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: EColors.textPrimary.withOpacity(0.5)),

    // Label
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: EColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: EColors.textPrimary.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    // Headlines
    headlineLarge: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: EColors.textPrimary)),
    headlineMedium: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: EColors.textWhite)),
    headlineSmall: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: EColors.textWhite)),

    // Titles
    titleLarge: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: EColors.textWhite)),
    titleMedium: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: EColors.textWhite)),
    titleSmall: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: EColors.textWhite)),

    // Body
    bodyLarge: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: EColors.textPrimary)),
    bodyMedium: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: EColors.textPrimary)),
    bodySmall: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: EColors.textWhite.withOpacity(0.5))),

    // Label
    labelLarge: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: EColors.textWhite)),
    labelMedium: GoogleFonts.rubik(
        textStyle: const TextStyle().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: EColors.textWhite.withOpacity(0.5))),
  );
}


/// --- How to use:
/// --- style: Theme.of(context).textTheme.headlineMedium,