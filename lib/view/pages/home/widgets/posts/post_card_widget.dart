import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/imaged_container_generator.dart';
import 'package:insta_clone/widgets/text_generator.dart';

class PostCardDetail extends StatelessWidget {
  String userProfileImage;
  String username;
  String postImage;

  final size;
  PostCardDetail({
    @required this.size,
    @required this.userProfileImage,
    @required this.username,
    @required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            color: Colors.black,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImagedContainerGeneratorWidget(
                  imageUrl: userProfileImage,
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  borderColor: Colors.orange,
                  borerRadiusWidth: 3,
                  borderRadiusPixel: size.width * 0.1,
                ),
                Container(
                  width: size.width * 0.70,
                  child: TextStyleGenerator(
                    text: username,
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: size.width * 0.08,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ImagedContainerGeneratorWidget(
            imageUrl: postImage,
            width: size.width,
            height: size.height * .35,
            borderColor: Colors.transparent,
            borerRadiusWidth: 0,
            borderRadiusPixel: 0,
          ),
          Container(
            width: size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 32,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                      Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 32,
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * .1,
                  child: Icon(
                    Icons.save_outlined,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Container(
              width: size.width * .9,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextStyleGenerator(
                    text: 'Liked by',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextStyleGenerator(
                      text: 'belalıboy and thousand of others',
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
