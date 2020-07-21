
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/detail_badge.dart';
import 'package:travelapp/widgets/profile/profile_subheader.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
              maxRadius: MediaQuery.of(context).size.width * 0.22,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('McDarsene Kelta',
                    style: TextStyle(
                        color: AppColor.secondaryTextColor,
                        letterSpacing: 0.5,
                        fontSize: 26.0
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DetailBadge(
                      title: "sightseer",
                      bgColor:Colors.pinkAccent.shade100.withOpacity(0.6) ,
                      fgColor: Colors.pink.shade800,
                    ),
                    DetailBadge(
                      title: "tourist",
                      bgColor:Colors.orange.shade100 ,
                      fgColor: Colors.orangeAccent.shade400,
                    ),
                    DetailBadge(
                      title: "bagpacker",
                      bgColor:Colors.lightGreen.shade100,
                      fgColor: Colors.green.shade800,
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10.0,),
        ProfileSubHeader(),
        Container(
          width:MediaQuery.of(context).size.width*0.92,
          padding: EdgeInsets.symmetric(vertical: 1.0,),
          margin: EdgeInsets.symmetric(vertical: 6.0),
          decoration: BoxDecoration(
              color: AppColor.mainColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      ],
    );
  }



}
