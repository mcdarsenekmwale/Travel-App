import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/page_header.dart';
import 'package:travelapp/widgets/profile/places_liked.dart';
import 'package:travelapp/widgets/profile/places_visted.dart';
import 'package:travelapp/widgets/profile/profile_header.dart';

class ProfilePAge extends StatefulWidget {
  const ProfilePAge({@required Key key}) : super(key: key);

  @override
  _ProfilePAgeState createState() => _ProfilePAgeState();
}

class _ProfilePAgeState extends State<ProfilePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        height: AppConstants.appHeight,
        width: AppConstants.appWidth,
        child: Stack(
          children: <Widget>[
            PageHeader(
              image: "assets/images/image2.jpg",
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: AppConstants.appWidth,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.125,
                ),
                decoration: BoxDecoration(
                  borderRadius: AppConstants.topBodyRadius,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.width * 0.08,),
                    ProfileHeader(),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        children: <Widget>[
                          PlacesVisited(),
                          PlacesLiked(),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.08,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
