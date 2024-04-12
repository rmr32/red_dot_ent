import 'package:red_dot_ent/features/pricing/pricing_screen.dart';
import 'package:red_dot_ent/utils/constants/enums.dart';
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
    double height = EDeviceUtils.getScreenHeight();
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      EColors.primary.withOpacity(EStyle.colorBlockOpacity),
                      BlendMode.darken),
                  image: const AssetImage(EImages.bg),
                  fit: BoxFit.cover,
                ),
              ),
              height: height,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(
                      () {
                        switch (controller.currentPage.value) {
                          case 0:
                            return const HomeScreen();
                          case 1:
                            return const AboutScreen();
                          case 2:
                            return const PricingScreen();
                          case 3:
                            return const BeatsScreen();
                          case 4:
                            return GalleryScreen();
                          case 5:
                            return const ReservationScreen();
                          default:
                            return Container();
                        }
                      },
                    ),
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
