import 'package:flutter/material.dart';

class DiscoverAppWidget extends StatelessWidget {
  final size;
  DiscoverAppWidget({@required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: size.width * .75,
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            width: size.width * .15,
            child: Icon(
              Icons.scanner_outlined,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
