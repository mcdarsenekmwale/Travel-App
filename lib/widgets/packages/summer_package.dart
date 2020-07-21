import 'package:flutter/cupertino.dart';
import 'package:travelapp/models/packages.dart';
import 'package:travelapp/utils/app_constants.dart';

import 'package_card.dart';
import '../section_header.dart';

class SummerPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SectionHeader(
            title: "Summer Packages",
            fontSize: 23.0,
            underlineLength: MediaQuery.of(context).size.width*0.25,
          ),
          Container(
            margin: AppConstants.symHorizontalPadding,
            height: MediaQuery.of(context).size.width*0.68,
            color: Color(0xFFF3F5F7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                PackageCard(
                  cardMargin: EdgeInsets.only(top: 1, right: 2.0),
                  cardWidth:MediaQuery.of(context).size.width*0.3 ,
                  package: Package(
                      image: "assets/images/image7.jpg",
                      name: "London",
                      season: "summer"
                  ),
                ),
                Column(
                  children: <Widget>[
                    PackageCard(
                      cardMargin: EdgeInsets.only(bottom: 3, left: 2.0),
                      cardHeight: MediaQuery.of(context).size.width*0.33,
                      cardWidth:MediaQuery.of(context).size.width*0.3 ,
                      package: Package(
                          image: "assets/images/bookmark9.jpg",
                          name: "Goa",
                          season: "summer"
                      ),
                    ),

                    PackageCard(
                      cardMargin: EdgeInsets.only(top: 3, left: 2.0),
                      cardHeight: MediaQuery.of(context).size.width*0.33,
                      cardWidth:MediaQuery.of(context).size.width*0.3 ,
                      package:Package(
                          image: "assets/images/image8.jpg",
                          name: "London",
                          season: "summer"
                      ),
                    )
                  ],
                ),
                PackageCard(
                  cardMargin: EdgeInsets.only(top: 1, left: 2.0),
                  cardWidth:MediaQuery.of(context).size.width*0.3,
                  package: Package(
                      image: "assets/images/bookmark1.jpg",
                      name: "Ladakh",
                      season: "summer"
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
