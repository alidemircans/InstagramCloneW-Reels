import 'package:flutter/material.dart';

class ImagedContainerGeneratorWidget extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final Color borderColor;
  final double borerRadiusWidth;
  final double borderRadiusPixel;

  const ImagedContainerGeneratorWidget(
      {@required this.height,
      @required this.width,
      @required this.imageUrl,
      this.borderColor,
      this.borerRadiusWidth,
      this.borderRadiusPixel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borerRadiusWidth,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadiusPixel),
        ),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
