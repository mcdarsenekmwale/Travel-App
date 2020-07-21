
import 'package:flutter/cupertino.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

import '../image_card.dart';
import '../section_header.dart';

class PlacesVisited extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppConstants.symHorizontalPadding,
      child: Column(
        children: <Widget>[
          SectionHeader(
            title: "Placed You Visited",
            fontSize: 20.0,
            verticalSize: 1.0,
            fontColor: AppColor.secondaryTextColor,
            underlineLength: MediaQuery.of(context).size.width*0.25,
          ),
          Row(
            children: <Widget>[
              ImageCard(
                image:"assets/images/lake.jpg",
                borderRadius: BorderRadius.circular(2.0),
                height:MediaQuery.of(context).size.width*0.45 ,
              ),
              ImageCard(
                image:"assets/images/image2.jpg",
                borderRadius: BorderRadius.circular(2.0),
                height:MediaQuery.of(context).size.width*0.45 ,
              ),
            ],
          )
        ],
      ),
    );
  }
}
