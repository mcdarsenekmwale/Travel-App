import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/models/users.dart';
import 'package:travelapp/utils/app_color.dart';

class ConversationHeader extends StatelessWidget implements PreferredSizeWidget {
  final User user;

  const ConversationHeader({Key key,@required this.user}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      elevation: 0.5,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: IconButton(icon: Icon(Icons.arrow_back_ios ),
                  iconSize: 26.0,
                  color: AppColor.darkTextColor,
                  onPressed:()=>Navigator.pop(context)
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(user.image),
                maxRadius: 21.0,
            ),
            SizedBox(width: 10.0,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(user.name,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: AppColor.secondaryTextColor,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 2.0,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(icon: Icon(Icons.card_travel),
                  iconSize: 26.0,
                  color: AppColor.darkTextColor,
                  onPressed:(){}
              ),
            ),
          ],
        ),
      ),
    );
  }
}

