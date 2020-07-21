
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/screens/pages/connect_page.dart';
import 'package:travelapp/screens/pages/home_page.dart';
import 'package:travelapp/screens/pages/package_page.dart';
import 'package:travelapp/screens/pages/profile_page.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final PageStorageBucket _mainPageStore = PageStorageBucket();

  //page keys
  static const Key pHome_key = PageStorageKey('pHome');
  static const Key pPackage_key = PageStorageKey('pPackage');
  static const Key pConnect_key = PageStorageKey('pConnect');
  static const Key pProfile_key = PageStorageKey('pProfile');

  final List<Widget> _appMainPages = [
    HomePage(key: pHome_key,),
    PackagePage(key: pPackage_key),
    ConnectPage(key: pConnect_key),
    ProfilePAge(key: pProfile_key)
  ];

  Widget _appFirstPage = HomePage(key: pHome_key);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: AppConstants.appHeight,
          width: AppConstants.appWidth,
          child: PageStorage(child: _appFirstPage, bucket: _mainPageStore),
        ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        color:AppColor.navColor,
          shape: CircularNotchedRectangle(),
          notchMargin: 2,
          child: BottomNavigation(
            onTap: _onBottomNavigate,
            index: _selectedIndex,
          ),
      ),
    );
  }

  //
    _onBottomNavigate(int index){
      setState(() {
        _selectedIndex = index;
        if(_selectedIndex == index)
          _appFirstPage = _appMainPages[index];
      });
    }

 }

