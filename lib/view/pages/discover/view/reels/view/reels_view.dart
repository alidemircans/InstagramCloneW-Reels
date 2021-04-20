import 'package:flutter/material.dart';
import 'package:insta_clone/view/pages/discover/view/reels/widget/video_item.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage>
    with SingleTickerProviderStateMixin {
  var videos = [
    {
      'name': 'alidemircans',
      'video': 'https://bulcagir.com/upload/video/HomeVideo-1.mp4',
    },
    {
      'name': 'alidemircans',
      'video': 'https://bulcagir.com/upload/video/HomeVideo-1.mp4',
    },
    {
      'name': 'alidemircans',
      'video': 'https://bulcagir.com/upload/video/HomeVideo-1.mp4',
    },
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: videos.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: RotatedBox(
        quarterTurns: 1,
        child: TabBarView(
          controller: _tabController,
          children: List.generate(videos.length, (index) {
            return RotatedBox(
              quarterTurns: -1,
              child: VideoItemWidget(
                name: videos[index]['name'],
                videoUrl: videos[index]['video'],
                size: size,
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
