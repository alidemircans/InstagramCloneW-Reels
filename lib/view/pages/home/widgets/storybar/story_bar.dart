import 'package:flutter/material.dart';
import 'package:insta_clone/view/pages/home/widgets/storybar/story_card.dart';
import 'package:insta_clone/widgets/text_generator.dart';

class StoryBarWidget extends StatelessWidget {
  final storyModel;
  final size;
  StoryBarWidget({@required this.storyModel, @required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: size.width,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: storyModel.length,
        itemBuilder: (context, index) {
          return StoryCardWidget(
            image: storyModel[index]['image'],
            text: storyModel[index]['name'],
          );
        },
      ),
    );
  }
}
