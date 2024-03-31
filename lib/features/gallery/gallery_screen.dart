import 'package:red_dot_ent/utils/constants/exports.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<String> eventSpacePhotos = [
    EImages.studio1,
    EImages.studio2,
    EImages.studio3
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add the text box here
            Text(
              textAlign: TextAlign.center,
              EText.gallery.toUpperCase(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Expanded(
              // Wrap GridView.builder with Expanded to occupy remaining space
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust the number of columns as needed
                  crossAxisSpacing: 8.0, // Adjust spacing between columns
                  mainAxisSpacing: 8.0, // Adjust spacing between rows
                ),
                itemCount: eventSpacePhotos.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    eventSpacePhotos[index], // Load photo from asset
                    fit: BoxFit.cover, // Adjust image fitting as needed
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
