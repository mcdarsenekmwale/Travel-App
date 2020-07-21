import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/packages/monsoon_package.dart';
import 'package:travelapp/widgets/packages/summer_package.dart';
import 'package:travelapp/widgets/packages/winter_package.dart';
import 'package:travelapp/widgets/search_component.dart';

class PackagePage extends StatefulWidget {

  const PackagePage({@required Key key}) : super(key: key);

  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      child: ListView(
        shrinkWrap: false,
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Packages !!',
                  style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                  ),),
                SizedBox(height: 1.0,),
                Text('Some exciting and beautiful vacation packages !!!',
                  style: TextStyle(
                    color: AppColor.darkTextColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic
                  ),),
              ],
            ),
          ),
          Padding(
            padding: AppConstants.symPadding,
            child: SearchComponent(
            ),
          ),

          SummerPackage(),
          SizedBox(height: 4.0,),
          MonsoonPackage(),
          SizedBox(height: 4.0,),
          WinterPackage()

        ],
      ),
      ),
    );
  }
}
