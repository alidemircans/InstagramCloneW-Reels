import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/text_generator.dart';

class HomePageAppBar extends StatelessWidget {
  final size;
  final image;
  HomePageAppBar({@required this.size, @required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .3,
            padding: EdgeInsets.only(left: 10),
            child: TextStyleGenerator(
              text: 'Instagram',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: size.width * .4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
