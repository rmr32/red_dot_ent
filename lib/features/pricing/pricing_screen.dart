import 'package:red_dot_ent/utils/constants/exports.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    EText.price.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),

                  // audio.open(
                  //   Audio.file(EAudio.roddyRicch),
                  // ),
                  // AudioWidget.assets(
                  //     path: EAudio.roddyRicch,
                  //     play: true,
                  //     loopMode: LoopMode.none,
                  //     volume: 1.0,
                  //     child: const IconButton(
                  //         onPressed: null, icon: Icon(Icons.play_arrow)))
                ],
              ),
            )),
      ],
    );
  }
}
// 40/hr. If you like and subscribe you'll get 10 dollars off your first 2 hrs

// 140/4hrs

// 240/8hrs