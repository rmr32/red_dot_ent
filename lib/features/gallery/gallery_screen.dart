import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/features/gallery/widgets/image_viewer.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<String> studioImages = [
    EImages.studio1,
    EImages.studio2,
    EImages.studio3,
  ];

  @override
  Widget build(BuildContext context) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Text(
//             //   textAlign: TextAlign.center,
//             //   EText.gallery.toUpperCase(),
//             //   style: Theme.of(context).textTheme.headlineMedium,
//             // ),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 8.0,
//                   mainAxisSpacing: 8.0,
//                 ),
//                 itemCount: studioImages.length,
//                 itemBuilder: (context, index) {
//                   return WidgetAnimator(
//                     // incomingEffect: WidgetTransitionEffects.incomingScaleUp(
//                     //     delay: Duration(seconds: (index * 200))),
//                     atRestEffect: WidgetRestingEffects.fidget(
//                         effectStrength: 0.1,
//                         duration: const Duration(seconds: 5)),
//                     child: GestureDetector(
//                         onTap: () {
//                           Get.to(
//                             () => const EImageViewer(),
//                             transition: Transition.fadeIn,
//                             arguments: {'src': studioImages[index]},
//                           );
//                         },
//                         child: ECard(
//                           child: Hero(
//                             tag: studioImages[index],
//                             child: Image.asset(
//                               studioImages[index],
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         )),
//                   )
//                       .animate(delay: (index * 200).ms)
//                       .scale(curve: Curves.easeIn)
//                       .slide(curve: Curves.easeInOut)
//                       .fade(duration: 300.ms);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
    final controller = OnHoverButtonController.instance;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   textAlign: TextAlign.center,
            //   EText.gallery.toUpperCase(),
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: studioImages.length,
                itemBuilder: (context, index) {
                  return MouseRegion(
                    onEnter: (_) => controller.onEnter((index + 1).toString()),
                    onExit: (_) => controller.onExit((index + 1).toString()),
                    child: Obx(() => WidgetAnimator(
                        // incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                        //     delay: Duration(seconds: (index * 200))),

                        atRestEffect:
                            controller.isHovered[(index + 1).toString()]!.value
                                ? WidgetRestingEffects.fidget(
                                    effectStrength: 0.1,
                                    duration: const Duration(seconds: 5),
                                  )
                                : WidgetRestingEffects.wave(),
                        child: GestureDetector(
                            onTap: () {
                              Get.to(
                                () => const EImageViewer(),
                                transition: Transition.fadeIn,
                                arguments: {'src': studioImages[index]},
                              );
                            },
                            child: ECard(
                                child: Hero(
                                    tag: studioImages[index],
                                    child: Image.asset(studioImages[index],
                                        fit: BoxFit.cover)))))),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn);
  }
}

//  .animate(delay: (index * 200).ms)
//                           .scale(curve: Curves.easeIn, duration: 100.ms)
//                           // .slide(curve: Curves.easeInOut)
//                           .fade(duration: 300.ms),



//  child: Obx(
//                       () => WidgetAnimator(
//                         // incomingEffect: WidgetTransitionEffects.incomingScaleUp(
//                         //     delay: Duration(seconds: (index * 200))),
//                         atRestEffect:
//                             controller.isHovered[(index + 1).toString()]!.value
//                                 ? WidgetRestingEffects.fidget(
//                                     effectStrength: 0.1,
//                                     duration: const Duration(seconds: 5),
//                                   )
//                                 : WidgetRestingEffects.wave(),
//                         child: GestureDetector(
//                             onTap: () {
//                               Get.to(
//                                 () => const EImageViewer(),
//                                 transition: Transition.fadeIn,
//                                 arguments: {'src': studioImages[index]},
//                               );
//                             },
//                             child: ECard(
//                               child: Hero(
//                                 tag: studioImages[index],
//                                 child: Image.asset(
//                                   studioImages[index],
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             )),
//                       ),