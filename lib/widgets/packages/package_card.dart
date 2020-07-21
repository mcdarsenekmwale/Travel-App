
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/packages.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class PackageCard extends StatelessWidget {

  final Package package;
  final String subtitle;
  final double cardWidth;
  final double cardHeight;
  final EdgeInsets cardMargin;

  const PackageCard({Key key,@required this.package, this.subtitle, this.cardWidth, this.cardHeight, this.cardMargin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          margin:cardMargin?? EdgeInsets.only(right: 15.0, bottom: 8.0),
          height: cardHeight??MediaQuery.of(context).size.width *0.69 ,
          width:cardWidth?? MediaQuery.of(context).size.width *0.58,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              image: DecorationImage(image: AssetImage(package.image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade50,
                    offset: Offset(1.0, 1.0)
                )
              ]
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight
                )
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                    decoration: BoxDecoration(
                        color: AppColor.navPrimaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.0)
                        )
                    ),
                    child: Text(package.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
