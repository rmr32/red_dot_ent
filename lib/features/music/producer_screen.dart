import 'package:flutter_animate/flutter_animate.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ProducerScreen extends StatelessWidget {
  ProducerScreen({super.key});
  final double height = EDeviceUtils.getScreenHeight();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// --- Image --- ///
              WidgetAnimator(
                atRestEffect: WidgetRestingEffects.wave(
                    effectStrength: 0.5, duration: const Duration(seconds: 2)),
                child: ECard(
                  borderColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        EColors.primary,
                        BlendMode.saturation,
                      ),
                      child: Image.asset(
                        EImages.playlistJd,
                        height: ESizes.imageSizeXl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwSections * 2),

              /// --- Bio --- ///
              Text(
                textAlign: TextAlign.center,
                EText.beatSubtext1,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: EColors.secondary,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ),
      ).animate().fadeIn(duration: 750.ms, curve: Curves.easeIn),
    );
  }
}
