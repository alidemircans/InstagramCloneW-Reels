import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/imaged_container_generator.dart';
import 'package:insta_clone/widgets/text_generator.dart';

class VideoBottomBarItem extends StatelessWidget {
  final size;
  final name;
  final description;

  VideoBottomBarItem({
    @required this.size,
    @required this.name,
    @required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImagedContainerGeneratorWidget(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
                height: size.width * 0.1,
                width: size.width * 0.1,
                borderColor: Colors.orange,
                borerRadiusWidth: 3,
                borderRadiusPixel: size.width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * .7,
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextStyleGenerator(
                      maxLine: 1,
                      text: name,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: size.width * .7,
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextStyleGenerator(
                      maxLine: 1,
                      text: description,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
