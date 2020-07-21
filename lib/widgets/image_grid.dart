
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_constants.dart';

import 'image_card.dart';

class ImageGrid extends StatelessWidget {

  static List<String> images1 = [
    "assets/images/image1.jpg",
    "assets/images/lake.jpg",
  ];

  static List<String> images2 = [
    "assets/images/carbin.jpg",
    "assets/images/image2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: images1.map((image) => ImageCard(image:image)).toList(),
          ),
          SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: images2.map((image) =>ImageCard(image:image) ).toList(),
          )
        ],
      )
    );
  }

}
