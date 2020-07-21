
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class DetailListItem extends StatelessWidget {

  final String title;
  final double iconSize;
  final double fontSize;

  const DetailListItem({Key key,@required this.title, this.iconSize, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
            margin: EdgeInsets.only(right: 2.0),
            decoration: BoxDecoration(
              color: AppColor.navPrimaryColor.withOpacity(0.7),
              borderRadius: AppConstants.appRadius
            ),
          ),
          Expanded(
            child: Text(title,
              style: TextStyle(
                  color: AppColor.secondaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize?? 17.0,
                  letterSpacing: 0.2
              ),),
          )
        ],
      ),
    );
  }
}
