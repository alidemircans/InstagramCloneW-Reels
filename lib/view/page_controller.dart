import 'package:flutter/material.dart';
import 'package:insta_clone/view/pages/discover/view/discover_view.dart';
import 'package:insta_clone/view/pages/home/view/homepage_view.dart';
import 'package:insta_clone/widgets/bottombar/bottom_bar_item_widget.dart';

class PageControlerView extends StatefulWidget {
  var currentIndex;
  PageControlerView({@required this.currentIndex});
  @override
  _PageControlerViewState createState() => _PageControlerViewState();
}

class _PageControlerViewState extends State<PageControlerView> {
  var pages = [
    HomePageView(),
    DiscoverView(),
    HomePageView(),
    HomePageView(),
    HomePageView()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: pages[widget.currentIndex],
        bottomNavigationBar: Container(
          width: size.width,
          height: 60,
          child: BottomAppBar(
            notchMargin: 0.0,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 0;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: Icons.home,
                    defaultIncon: Icons.home_outlined,
                    thisIndex: 0,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 1;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: Icons.search,
                    defaultIncon: Icons.search_outlined,
                    thisIndex: 1,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 2;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: Icons.play_arrow,
                    defaultIncon: Icons.play_arrow_outlined,
                    thisIndex: 2,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 3;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: Icons.shopping_basket,
                    defaultIncon: Icons.shopping_bag_outlined,
                    thisIndex: 3,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 4;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: Icons.person,
                    defaultIncon: Icons.person_outline,
                    thisIndex: 4,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
