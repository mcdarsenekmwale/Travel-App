import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/chats/chat_list.dart';
import 'package:travelapp/widgets/chats/chat_navigation_header.dart';
import 'package:travelapp/widgets/detail_badge.dart';
import 'package:travelapp/widgets/search_component.dart';
import 'package:travelapp/widgets/search_field.dart';

class ConnectPage extends StatefulWidget {

  const ConnectPage({@required Key key}) : super(key: key);

  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {

  int _tabIndex = 1;
  List<String> navItems = [
    "Friends",
    "Chats",
    "Invite"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width*0.75,
              margin: EdgeInsets.only(top: 35.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Let's Connect  !!",
                    style: TextStyle(
                      color: AppColor.secondaryTextColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                    ),),
                  SizedBox(height: 5.0,),
                  Text('Chat with Friends and find your Travelmate!!',
                    style: TextStyle(
                        color: AppColor.darkTextColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic
                    ),),
                  ChatNavigationHeader(
                    index: _tabIndex,
                    onNavigation:navigateToNewTab,
                  ),
                  SearchField(
                      leftChild: Center(
                        child: Container(
                          child: Stack(
                            children: <Widget>[
                              Icon(Icons.notifications,
                                color: AppColor.mainColor.withOpacity(0.6),
                                size: 45.0,
                              ),
                              Positioned(
                                right: -2.0,
                                top: -2.0,
                                child: DetailBadge(
                                  title: "4",
                                  bgColor: AppColor.btnPrimaryColor,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*0.55,),
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
                child: ChatList()
            )
          ],
        ),
      ),
    );
  }

  navigateToNewTab(int index){
     setState(() {
       _tabIndex = index;
     });
  }
}
