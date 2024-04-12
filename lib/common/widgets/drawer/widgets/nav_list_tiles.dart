import 'package:red_dot_ent/utils/constants/exports.dart';

class ENavTiles extends StatelessWidget {
  const ENavTiles({super.key, required this.navPage});

  final String navPage;

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find();
    return Obx(
      () => ListTile(
        // leading: const Icon(
        //   EImages.iconHome,
        //   color: EColors.secondary,
        // ),
        hoverColor: EColors.accent.withOpacity(EStyle.colorBlockOpacity),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: ESizes.xl, vertical: ESizes.sm),
        title: Text(navPage),
        textColor: EColors.secondary,
        selected: controller.currentPage.value == EMaps.navPage[navPage],
        selectedColor: EColors.accent,
        onTap: () {
          controller.changePage(EMaps.navPage[navPage]!);
          Get.back();
          // Get.toNamed(ERoutes.home);
        },
      ),
    );
  }
}
