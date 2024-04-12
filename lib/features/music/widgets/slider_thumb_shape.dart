import 'package:red_dot_ent/utils/constants/exports.dart';

class CustomThumbShape extends SliderComponentShape {
  final double thumbRadius;
  final ImageProvider imageProvider;

  CustomThumbShape({required this.thumbRadius, required this.imageProvider});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    // Paint the image onto the canvas
    final ImageStream stream =
        imageProvider.resolve(createLocalImageConfiguration(Get.context!));
    stream.addListener(ImageStreamListener((ImageInfo info, bool _) {
      final Offset imageOffset = Offset(
        center.dx - thumbRadius,
        center.dy - thumbRadius,
      );
      context.canvas.drawImage(info.image, imageOffset, Paint());
    }));
  }
}
