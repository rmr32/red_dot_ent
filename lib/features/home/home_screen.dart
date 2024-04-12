import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = NavigationController.instance;
    final hoverController = OnHoverButtonController.instance;

    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: ESizes.spaceBtwSections),

              /// --- Tagline --- ///
              TextAnimator(
                EText.homeTagline1.toUpperCase(),
                incomingEffect: WidgetTransitionEffects.incomingScaleDown(),
                style: EDeviceUtils.getScreenWidth() < ESizes.mobile
                    ? Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: EColors.accent)
                    : Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                EText.homeTagline2.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: EColors.secondary),
                textAlign: TextAlign.center,
              ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn),
              // TextAnimator(
              //   initialDelay: const Duration(milliseconds: 500),
              //   incomingEffect: WidgetTransitionEffects(
              //       blur: const Offset(2, 2),
              //       duration: const Duration(milliseconds: 300)),
              //   EText.homeTagline2.toUpperCase(),
              //   style: Theme.of(context)
              //       .textTheme
              //       .headlineLarge!
              //       .copyWith(color: EColors.secondary),
              //   textAlign: TextAlign.center,
              // ),

              // RichText(
              //   textAlign: TextAlign.center,
              //   text: TextSpan(
              //     style: EDeviceUtils.getScreenWidth() < ESizes.mobile
              //         ? Theme.of(context)
              //             .textTheme
              //             .headlineLarge!
              //             .copyWith(color: EColors.accent)
              //         : Theme.of(context).textTheme.headlineLarge,
              //     children: [

              //       // TextSpan(
              //       //   text: EText.homeTagline1.toUpperCase(),
              //       // ),
              //       // const TextSpan(text: " "),
              //       // TextSpan(
              //       //   text: EText.homeTagline2.toUpperCase(),
              //       //   style: const TextStyle(color: EColors.secondary),
              //       // ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: ESizes.spaceBtwSections * 3),
              Column(
                children: [
                  /// --- Subtitle --- ///
                  ECard(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.md, vertical: ESizes.sm),
                      child: Text(EText.homeSubtext,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: EColors.secondary)),
                    ),
                  ),
                  // Container(
                  //   /// --- Background Box --- ///
                  //   decoration: const BoxDecoration(
                  //     color: EColors.secondary,
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(ESizes.borderRadiusXl),
                  //       bottomRight: Radius.circular(ESizes.borderRadiusXl),
                  //     ),
                  //   ),

                  //   /// --- Subtext --- ///
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(ESizes.md),
                  //     child: Text(EText.homeSubtext,
                  //         textAlign: TextAlign.center,
                  //         style: Theme.of(context).textTheme.titleMedium),
                  //   ),
                  // ),

                  const SizedBox(height: ESizes.spaceBtwSections * 2),

                  /// --- Pricing--- ///
                  ECard(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.md, vertical: ESizes.sm),
                      child: Text(EText.priceDiscount,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: EColors.secondary)),
                    ),
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Text(EText.pricehour1,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: EColors.secondary)),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Text(EText.pricehour4,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: EColors.secondary)),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Text(EText.pricehour8,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: EColors.secondary))
                      .animate()
                      .fade(duration: 2000.ms),

                  const SizedBox(height: ESizes.spaceBtwSections),

                  /// --- Button --- ///
                  OnHoverButton(
                    // onPressed: () => Get.to(
                    //   const HomeScreen(),
                    //   transition: Transition.fade,
                    //   duration: EDurations.pageTransition,
                    // ),
                    onPressed: () {
                      navController.changePage(EMaps.navPage[EText.book]!);

                      hoverController.onExit('1');
                      Get.back();
                      // Get.toNamed(ERoutes.home);
                    },
                    text: EText.homeCta,
                  ),
                ],
              ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn),
              // .animate(delay: 750.ms)
              // .fadeIn(duration: 2000.ms, curve: Curves.easeIn),
              // /// --- Subtitle --- ///
              // Container(
              //   /// --- Background Box --- ///
              //   decoration: const BoxDecoration(
              //     color: EColors.secondary,
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(ESizes.borderRadiusXl),
              //       bottomRight: Radius.circular(ESizes.borderRadiusXl),
              //     ),
              //   ),

              //   /// --- Subtext --- ///
              //   child: Padding(
              //     padding: const EdgeInsets.all(ESizes.sm),
              //     child: Text(EText.homeSubtext,
              //         textAlign: TextAlign.center,
              //         style: Theme.of(context).textTheme.titleMedium),
              //   ),
              // ),

              // const SizedBox(height: ESizes.spaceBtwSections * 3),

              // /// --- Pricing--- ///
              // ECard(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //         horizontal: ESizes.md, vertical: ESizes.sm),
              //     child: Text(EText.priceDiscount,
              //         textAlign: TextAlign.center,
              //         style: Theme.of(context)
              //             .textTheme
              //             .titleSmall!
              //             .copyWith(color: EColors.secondary)),
              //   ),
              // ),
              // const SizedBox(height: ESizes.spaceBtwItems),
              // Text(EText.pricehour1,
              //     textAlign: TextAlign.center,
              //     style: Theme.of(context)
              //         .textTheme
              //         .titleLarge!
              //         .copyWith(color: EColors.secondary)),
              // const SizedBox(height: ESizes.spaceBtwItems),
              // Text(EText.pricehour4,
              //     textAlign: TextAlign.center,
              //     style: Theme.of(context)
              //         .textTheme
              //         .titleLarge!
              //         .copyWith(color: EColors.secondary)),
              // const SizedBox(height: ESizes.spaceBtwItems),
              // Text(EText.pricehour8,
              //         textAlign: TextAlign.center,
              //         style: Theme.of(context)
              //             .textTheme
              //             .titleLarge!
              //             .copyWith(color: EColors.secondary))
              //     .animate()
              //     .fade(duration: 2000.ms),

              // const SizedBox(height: ESizes.spaceBtwSections),

              // /// --- Button --- ///
              // OnHoverButton(
              //   // onPressed: () => Get.to(
              //   //   const HomeScreen(),
              //   //   transition: Transition.fade,
              //   //   duration: EDurations.pageTransition,
              //   // ),
              //   onPressed: () {
              //     navController.changePage(EMaps.navPage[EText.book]!);

              //     hoverController.onExit('1');
              //     Get.back();
              //     // Get.toNamed(ERoutes.home);
              //   },
              //   text: EText.homeCta,
              // ),
              const SizedBox(height: ESizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
