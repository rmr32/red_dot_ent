import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/common/widgets/icons/on_hover_icon.dart';
import 'package:red_dot_ent/common/widgets/fab/floating_action_button.dart';
import 'package:red_dot_ent/features/pricing/pricing_screen.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:red_dot_ent/utils/constants/icons.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    final controller = NavigationController.instance;
    return LayoutBuilder(
      builder: (context, constraints) {
        double height = EDeviceUtils.getScreenHeight();
        double width = EDeviceUtils.getScreenWidth();
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          floatingActionButton: const EFloatingActionButton(),
          body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    EColors.primary.withOpacity(EStyle.colorBlockOpacity),
                    BlendMode.darken),
                image: const AssetImage(EImages.bg),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// --- Navigation --- ///
                const Expanded(
                  flex: 2,
                  child: EDrawer(isRounded: false),
                ),

                /// --- Content --- ///
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: EColors.tertiary
                            .withOpacity(EStyle.colorBlockOpacity),
                        height: height,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Center(
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
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
