import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants{

  static ThemeData appTheme = ThemeData(
                              visualDensity: VisualDensity.adaptivePlatformDensity,
                              );
  static EdgeInsets symPadding = EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0);
  static EdgeInsets symVerticalPadding = EdgeInsets.symmetric(vertical: 20.0);
  static EdgeInsets symHorizontalPadding = EdgeInsets.symmetric(horizontal: 10.0);
  static double appHeight = double.infinity;
  static double appWidth = double.infinity;
  
  static BorderRadius appRadius = BorderRadius.circular(20.0);
  static BorderRadius appIconRadius = BorderRadius.circular(80.0);
  static BorderRadius topRadius = BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0)
                                  );
  static BorderRadius bottomRadius = BorderRadius.only(
      bottomRight: Radius.circular(20.0),
      bottomLeft: Radius.circular(20.0)
  );
  static BorderRadius topHeaderRadius = BorderRadius.only(
      topRight: Radius.circular(30.0),
      topLeft: Radius.circular(30.0)
  );
  static BorderRadius bottomHeaderRadius = BorderRadius.only(
      bottomRight: Radius.circular(30.0),
      bottomLeft: Radius.circular(30.0)
  );

  static BorderRadius topBodyRadius = BorderRadius.only(
      topRight: Radius.circular(30.0),
      topLeft: Radius.circular(30.0)
  );

  static OutlineInputBorder chatBoxBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: BorderSide(color: Colors.transparent),
  );
}