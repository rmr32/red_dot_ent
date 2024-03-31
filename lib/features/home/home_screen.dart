import 'package:red_dot_ent/utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = EDeviceUtils.getScreenHeight();
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// --- Tagline --- ///
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.headlineLarge,
            children: <TextSpan>[
              TextSpan(
                text: EText.homeTagline1.toUpperCase(),
              ),
              const TextSpan(text: " "),
              TextSpan(
                text: EText.homeTagline2.toUpperCase(),
                style: const TextStyle(color: EColors.secondary),
              ),
            ],
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwSections * 3),

        /// --- Subtitle --- ///
        Container(
          decoration: const BoxDecoration(
              color: EColors.secondary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ) // Radius of the rounded corners
              ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(EText.homeSubtext,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge),
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwSections * 3),

        /// --- Pricing--- ///
        Text(EText.homePricing,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: ESizes.spaceBtwSections),

        /// --- Button --- ///
        const OnHoverButton(
          // onPressed: () => Get.to(
          //   const HomeScreen(),
          //   transition: Transition.fade,
          //   duration: EDurations.pageTransition,
          // ),

          text: EText.homeCta,
        ),
      ],
    );
  }
}


// 40/hr. If you like and subscribe you'll get 10 dollars off your first 2 hrs

// 140/4hrs

// 240/8hrs