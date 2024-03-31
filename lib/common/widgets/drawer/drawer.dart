import 'package:red_dot_ent/utils/constants/exports.dart';

class EDrawer extends StatelessWidget {
  const EDrawer({super.key, this.isRounded = true});

  final bool isRounded;

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find();
    return Drawer(
      backgroundColor: EColors.primary.withOpacity(EStyle.colorBlockOpacity),
      shape: isRounded
          ? null
          : const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
      child: Column(
        children: [
          /// --- Title --- ///
          DrawerHeader(
            child: Text(
              textAlign: TextAlign.center,
              EText.name.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white),
            ),
          ),

          /// --- Home --- ///
          Obx(
            () => ListTile(
              // leading: const Icon(
              //   EImages.iconHome,
              //   color: EColors.secondary,
              // ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              title: const Text(EText.home),
              textColor: EColors.secondary,
              selected: controller.currentPage.value == 0,
              selectedColor: EColors.accent,
              onTap: () {
                controller.changePage(0);
                Get.back();
                // Get.toNamed(ERoutes.home);
              },
            ),
          ),

          /// --- About --- ///
          Obx(
            () => ListTile(
              // leading: const Icon(
              //   EImages.iconHome,
              //   color: EColors.secondary,
              // ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              title: const Text(EText.about),
              textColor: EColors.secondary,
              selected: controller.currentPage.value == 1,
              selectedColor: EColors.accent,
              onTap: () {
                controller.changePage(1);
                Get.back();
                // Get.toNamed(ERoutes.home);
              },
            ),
          ),

          /// --- Beats --- ///
          Obx(
            () => ListTile(
              // leading: const Icon(
              //   EImages.iconHome,
              //   color: EColors.secondary,
              // ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              title: const Text(EText.beats),
              textColor: EColors.secondary,
              selected: controller.currentPage.value == 2,
              selectedColor: EColors.accent,
              onTap: () {
                controller.changePage(2);
                Get.back();
                // Get.toNamed(ERoutes.home);
              },
            ),
          ),

          /// --- Gallery --- ///
          Obx(
            () => ListTile(
              // leading: const Icon(
              //   EImages.iconHome,
              //   color: EColors.secondary,
              // ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              title: const Text(EText.gallery),
              textColor: EColors.secondary,
              selected: controller.currentPage.value == 3,
              selectedColor: EColors.accent,
              onTap: () {
                controller.changePage(3);
                Get.back();
                // Get.toNamed(ERoutes.home);
              },
            ),
          )
        ],
      ),
    );
  }
}
