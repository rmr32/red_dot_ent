import 'package:red_dot_ent/utils/constants/exports.dart';

class ELoaders {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static showSnackBarCustom({required message, elevation = 0, duration = 3}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: elevation,
        duration: Duration(seconds: duration),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(ESizes.md),
          margin: const EdgeInsets.symmetric(horizontal: ESizes.lg),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ESizes.borderRadiusMd),
            color: EHelperFunctions.isDarkMode(Get.context!)
                ? EColors.greyDark.withOpacity(0.9)
                : EColors.grey.withOpacity(0.9),
          ),
          child: Center(
              child: Text(message,
                  style: Theme.of(Get.context!).textTheme.labelLarge)),
        ),
      ),
    );
  }

  static showSnackBarSuccess({required title, message = ' ', duration = 5}) {
    Get.snackbar(
      title,
      message,
      isDismissible: false,
      shouldIconPulse: true,
      colorText: EColors.textPrimary,
      backgroundColor: EColors.accent,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(ESizes.md),
      icon: const Icon(
        EImages.iconSuccess,
        color: EColors.primary,
      ),
    );
  }

  static showSnackBarWarning({required title, message = ' ', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: EColors.textWhite,
      backgroundColor: EColors.warning,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(ESizes.md),
      icon: const Icon(
        EImages.iconWarning,
        color: EColors.white,
      ),
    );
  }

  static showSnackBarError({required title, message = ' ', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: EColors.textWhite,
      backgroundColor: EColors.error,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(ESizes.md),
      icon: const Icon(
        EImages.iconError,
        color: EColors.white,
      ),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
