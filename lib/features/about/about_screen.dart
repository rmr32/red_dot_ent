import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    /// --- Image --- ///
                    WidgetAnimator(
                      atRestEffect: WidgetRestingEffects.wave(
                          effectStrength: 0.5,
                          duration: const Duration(seconds: 2)),
                      child: ECard(
                        borderColor: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            EImages.austin1,
                            height: ESizes.imageSizeXl,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: ESizes.spaceBtwSections * 2),

                    /// --- Headline --- ///
                    // Text(
                    //   textAlign: TextAlign.left,
                    //   EText.about.toUpperCase(),
                    //   style: Theme.of(context).textTheme.headlineLarge,
                    // ),
                    // const SizedBox(height: ESizes.spaceBtwItems),

                    /// --- Paragraph Top --- ///
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: EColors.secondary,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: EText.name.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: EColors.secondary),
                          ),
                          const TextSpan(text: " "),
                          const TextSpan(
                            text: EText.aboutSubtext1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),

                    /// --- Paragraph Bottom --- ///
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: EColors.secondary,
                            ),
                        children: [
                          const TextSpan(
                            text: EText.aboutSubtext2,
                          ),
                          TextSpan(
                            text: EText.aboutSubtextHighlight1.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: EColors.secondary),
                          ),
                          const TextSpan(
                            text: " to ",
                          ),
                          TextSpan(
                            text: EText.aboutSubtextHighlight2.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: EColors.secondary),
                          ),
                          const TextSpan(
                            text: " AND ",
                          ),
                          TextSpan(
                            text: EText.aboutSubtextHighlight3.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: EColors.secondary),
                          ),
                          const TextSpan(
                            text: EText.aboutSubtext3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn);
  }
}
