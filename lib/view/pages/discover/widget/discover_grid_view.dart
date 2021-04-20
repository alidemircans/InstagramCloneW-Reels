import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_clone/view/pages/discover/view/reels/view/reels_view.dart';
import 'package:insta_clone/widgets/imaged_container_generator.dart';

class DiscoverGridView extends StatelessWidget {
  final discover;
  DiscoverGridView({@required this.discover});
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      itemCount: discover.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            print('.....');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReelsPage(),
              ),
            );
          },
          child: ImagedContainerGeneratorWidget(
            imageUrl: discover[index]['url'],
            borderColor: Colors.transparent,
            borderRadiusPixel: 0,
            borerRadiusWidth: 0,
            width: 100,
            height: 100,
          ),
        );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.count(
        index % 10 == 0 && index != 0 ? 2 : 1,
        index == 2
            ? 2
            : index % 10 == 0 && index != 0
                ? 2
                : 1,
      ),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
