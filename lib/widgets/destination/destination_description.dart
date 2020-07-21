import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class DestinationDescription extends StatelessWidget {

  final String description;

  const DestinationDescription({Key key,@required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 3.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Description'.toUpperCase(),
                textAlign: TextAlign.start,
                style: TextStyle(
                  letterSpacing: 0.4,
                    fontWeight: FontWeight.w800,
                    fontSize: 15.0,
                    color: AppColor.darkTextColor.withOpacity(0.85)
                ),
              ),
            ],
          ),
          Container(
            width:MediaQuery.of(context).size.width*0.9,
            padding: EdgeInsets.symmetric(vertical: 1.0,),
            margin: EdgeInsets.symmetric(vertical: 6.0),
            decoration: BoxDecoration(
                color: AppColor.mainColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Text(description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: AppColor.darkTextColor.withOpacity(0.9),
                  fontSize: 13.0
              ),
            ),
          )
        ],
      ),
    );
  }
}
