import 'package:red_dot_ent/utils/constants/exports.dart';

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
                  flex: 1,
                  child: EDrawer(isRounded: false),
                ),

                /// --- Content --- ///
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: EColors.accent
                            .withOpacity(EStyle.colorBlockOpacity),
                        height: height,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
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

// class DesktopLayout2 extends StatelessWidget {
//   const DesktopLayout2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = PageController2.instance;
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double height = EDeviceUtils.getScreenHeight();
//         double width = EDeviceUtils.getScreenWidth();
//         return Scaffold(
//           body: Container(
//             constraints: const BoxConstraints.expand(),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 colorFilter: ColorFilter.mode(
//                     EColors.primary.withOpacity(EStyle.colorBlockOpacity),
//                     BlendMode.darken),
//                 image: const AssetImage(EImages.bg),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 /// --- Navigation --- ///
//                 const Expanded(
//                   flex: 1,
//                   child: EDrawer(isRounded: false),
//                 ),

//                 /// --- Content --- ///
//                 Expanded(
//                   flex: 3,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                           color: EColors.accent
//                               .withOpacity(EStyle.colorBlockOpacity),
//                           height: height,
//                           width: double.infinity,
//                           child: Padding(
//                               padding: const EdgeInsets.only(top: 8.0),
//                               child: Obx(() {
//                                 switch (controller.currentPage) {
//                                   case 1:
//                                     return Text(
//                                       textAlign: TextAlign.center,
//                                       EText.name.toUpperCase(),
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headlineLarge,
//                                     );
//                                   case 2:
//                                     return Text(
//                                       textAlign: TextAlign.center,
//                                       EText.name.toUpperCase(),
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headlineLarge,
//                                     );
//                                   default:
//                                     return Container();
//                                 }
//                               }))),
//                     ],
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 3,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
