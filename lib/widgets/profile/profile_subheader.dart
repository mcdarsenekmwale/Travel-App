
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/profile/profile_subheader_item.dart';

class ProfileSubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppConstants.symHorizontalPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ProfileSubHeaderItem(
              title: "315",
              subtitle: "Connections"
          ),
          buildHorizontalLine(context),
          Expanded(
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width*0.3,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                border: Border.all(color: AppColor.btnPrimaryColor, width: 2.0)
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                animationDuration: Duration(milliseconds: 50),
                splashColor: AppColor.btnPrimaryColor,
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(1.0),
                elevation: 4.0,
                highlightElevation: 4.0,
                onPressed: (){},
                child: Text('Edit Profile',
                  style: TextStyle(
                      color: AppColor.btnPrimaryColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontSize: 14
                  ),
                ),
              ),
              ),
          ),
          buildHorizontalLine(context),
          ProfileSubHeaderItem(
              title: "52",
              subtitle: "Places Visited"
          ),

        ],
      ),
    );
  }

  Widget buildHorizontalLine(BuildContext context){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
      height: MediaQuery.of(context).size.width*0.12,
      decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(8.0)
      ),
    );
  }
}
