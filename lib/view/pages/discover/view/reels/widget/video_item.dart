import 'package:flutter/material.dart';
import 'package:insta_clone/view/pages/discover/view/reels/widget/video_bottom_person_bar.dart';
import 'package:insta_clone/widgets/imaged_container_generator.dart';
import 'package:insta_clone/widgets/text_generator.dart';
import 'package:video_player/video_player.dart';

class VideoItemWidget extends StatefulWidget {
  var name;
  var videoUrl;
  var size;

  VideoItemWidget({this.name, this.videoUrl, this.size});

  @override
  _VideoItemWidgetState createState() => _VideoItemWidgetState();
}

class _VideoItemWidgetState extends State<VideoItemWidget> {
  VideoPlayerController _videoPlayerController;

  bool playButton = false;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      _videoPlayerController.play();
      setState(() {
        playButton = false;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  Widget isPlaying() {
    return _videoPlayerController.value.isPlaying
        ? SizedBox()
        : Container(
            width: widget.size.width,
            height: widget.size.height,
            color: Colors.black.withOpacity(.3),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 80,
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoPlayerController.value.isPlaying
              ? _videoPlayerController.pause()
              : _videoPlayerController.play();
        });
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Stack(
            children: [
              VideoPlayer(_videoPlayerController),
              Center(
                child: isPlaying(),
              )
            ],
          ),
          VideoBottomBarItem(
            size: widget.size,
            name: widget.name,
            description:
                'Description for my first reeDescription for my first reels.ls.....',
          ),
        ],
      ),
    );
  }
}
