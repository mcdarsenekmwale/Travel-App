import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/utils/app_color.dart';

class BottomNavigation extends BottomNavigationBar{

  static List<Map> navItems = [
    {
      "icon": FontAwesomeIcons.home,
      "title":"Home"
    },
    {
      "icon":FontAwesomeIcons.boxOpen,
      "title":"Package"
    },
    {
      "icon": FontAwesomeIcons.solidCommentDots,
      "title":"Connect"
    },
    {
      "icon": FontAwesomeIcons.userAlt,
      "title":"Profile"
    }
  ];

  BottomNavigation({Function onTap, int index }):
        super(
        type: BottomNavigationBarType.fixed,
        onTap:onTap,
        currentIndex:index,
        items:navItems.map((item) =>
                BottomNavigationBarItem(
                icon: FaIcon(item["icon"]),
                  title: Text(item["title"],
                  )
              ),
          ).toList(),
        unselectedItemColor: AppColor.mainColor,
        fixedColor: AppColor.btnPrimaryColor,
        showUnselectedLabels:true,
        elevation:10.0,
        unselectedLabelStyle: TextStyle(
          fontSize: 11.2,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w400,
        ),
        selectedLabelStyle:TextStyle(
          fontSize: 11.6,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w700,
        ),
        iconSize:28.0,
      );
}
