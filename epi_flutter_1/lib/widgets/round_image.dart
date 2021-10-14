import 'package:flutter/cupertino.dart';

class RoundImage extends StatelessWidget {
  const RoundImage({
    Key? key,
    required this.width,
    required this.height,
    required this.imageString,
  }) : super(key: key);
  final double width;
  final double height;
  final String imageString;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(imageString),
            fit: BoxFit.fill
        ),
      ),
    );
  }
}