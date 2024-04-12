import 'package:red_dot_ent/features/music/player_screen.dart';
import 'package:red_dot_ent/features/music/producer_screen.dart';
import 'package:red_dot_ent/utils/constants/exports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BeatsScreen extends StatelessWidget {
  const BeatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = EDeviceUtils.getScreenHeight();
    double width = EDeviceUtils.getScreenWidth();
    final PageController controller = PageController();

    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProducerScreen(),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayerScreen(),
                  ],
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            onDotClicked: (index) => controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            ),
            controller: controller,
            count: 2,
            effect: const ExpandingDotsEffect(activeDotColor: EColors.accent),
          ),
        ],
      ),
    );
  }
}
