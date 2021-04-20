import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_clone/view/pages/discover/widget/discover_app.dart';
import 'package:insta_clone/view/pages/discover/widget/discover_grid_view.dart';
import 'package:insta_clone/widgets/imaged_container_generator.dart';

class DiscoverView extends StatefulWidget {
  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  @override
  Widget build(BuildContext context) {
    var discover = [
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
      {
        "url": "https://via.placeholder.com/600/92c952",
      },
      {
        "url":
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png',
      },
    ];
    var size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          DiscoverAppWidget(
            size: size,
          ),
          DiscoverGridView(
            discover: discover,
          ),
        ],
      ),
    );
  }
}
