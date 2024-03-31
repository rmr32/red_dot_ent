import 'package:red_dot_ent/utils/constants/exports.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                textAlign: TextAlign.center,
                EText.about.toUpperCase(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            )),
      ],
    );
  }
}
