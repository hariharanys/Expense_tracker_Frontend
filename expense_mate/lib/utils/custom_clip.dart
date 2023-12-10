import 'package:expense_mate/view/splash_screen/imports/splash_screen_import.dart';

class CustomClip extends CustomClipper<Path> {
  final double radius;

  CustomClip({required this.radius});

  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..moveTo(size.width / 2, size.height) // Start from the bottom center
      ..arcToPoint(
        const Offset(0, 0),
        radius: Radius.circular(radius),
        clockwise: true, // Arc in the opposite direction (upwards)
      )
      ..lineTo(size.width, 0) // Line to the top right
      ..arcToPoint(
        Offset(size.width / 2, size.height),
        radius: Radius.circular(radius),
        clockwise: true, // Arc in the opposite direction (upwards)
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
