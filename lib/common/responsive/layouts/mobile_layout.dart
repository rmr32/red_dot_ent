import 'package:red_dot_ent/utils/constants/exports.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final controller = NavigationController.instance;
  @override
  Widget build(BuildContext context) {
    double height = EDeviceUtils.getScreenHeight() - ESizes.appBarHeight;
    return SafeArea(
      child: Scaffold(
        backgroundColor: EColors.accent,
        appBar: const EAppBar(
          showBackArrow: false,
          showImplyLeading: true,
          color: Colors.transparent,
        ),
        drawer: const EDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: EColors.accent.withOpacity(EStyle.colorBlockOpacity),
              color: EColors.accent,
              height: height,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() {
                      switch (controller.currentPage.value) {
                        case 0:
                          return const HomeScreen();
                        case 1:
                          return const AboutScreen();
                        case 2:
                          return const BeatsScreen();
                        case 3:
                          return GalleryScreen();
                        default:
                          return Container();
                      }
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
