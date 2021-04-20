import 'package:flutter/material.dart';
import 'package:insta_clone/view/pages/home/widgets/posts/post_card_widget.dart';

class HomePagePostAreaWidget extends StatefulWidget {
  final postModel;
  final size;
  HomePagePostAreaWidget({@required this.postModel, @required this.size});
  @override
  _HomePagePostAreaWidgetState createState() => _HomePagePostAreaWidgetState();
}

class _HomePagePostAreaWidgetState extends State<HomePagePostAreaWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: widget.size.height * .01);
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.postModel.length,
      itemBuilder: (context, index) {
        return PostCardDetail(
          size: widget.size,
          userProfileImage: widget.postModel[index]['url'],
          postImage: widget.postModel[index]['url'],
          username: widget.postModel[index]['albumId'],
        );
      },
    );
  }
}
