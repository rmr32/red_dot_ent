import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class EFloatingActionButton extends StatelessWidget {
  const EFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      atRestEffect: WidgetRestingEffects.wave(),
      child: FloatingActionButton(
        hoverColor: EColors.secondary,
        onPressed: () {
          ELoaders.showForm();
        },
        backgroundColor: EColors.accent,
        child: const OnHoverIcon(
            icon: EIcons.newsletter, controllerKey: EText.newsletter),
      ),
    );
  }
}
