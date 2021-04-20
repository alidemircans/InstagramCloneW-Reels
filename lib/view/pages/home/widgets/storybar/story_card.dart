import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/text_generator.dart';

class StoryCardWidget extends StatelessWidget {
  final image;
  final text;
  StoryCardWidget({@required this.image, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(60),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          TextStyleGenerator(
            text: text,
          )
        ],
      ),
    );
  }
}
