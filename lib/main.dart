import 'package:flutter/material.dart';
import 'package:insta_clone/splash_screen.dart';
import 'package:insta_clone/view/page_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageControlerView(
        currentIndex: 0,
      ),
    );
  }
}
