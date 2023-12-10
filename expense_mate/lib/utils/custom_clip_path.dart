import 'package:expense_mate/constants/imports/constant_import.dart';
import 'package:expense_mate/view/splash_screen/imports/splash_screen_import.dart';

class CustomClipPath extends StatelessWidget {
  final CustomClipper<Path>? customClipper;
  final double width;
  final double height;
  final String? imgUrl;
  const CustomClipPath(
      {Key? key,
      this.customClipper,
      this.width = 200,
      this.height = 200,
      this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: customClipper,
      child: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: SvgPicture.asset(
          imgUrl ?? "",
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
