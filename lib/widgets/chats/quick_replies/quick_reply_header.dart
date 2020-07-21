import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';

class QuickReplyHeader extends StatelessWidget implements PreferredSizeWidget {

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
                  iconSize: 25.0,
                  color: AppColor.secondaryTextColor,
                  onPressed:()=>Navigator.pop(context)
              ),
            ),
            SizedBox(width: 7.0,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Quick replies',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: AppColor.primaryTextColor,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(icon: Icon(Icons.add),
                  iconSize: 30.0,
                  color: AppColor.secondaryTextColor,
                  onPressed:(){}
              ),
            ),
          ],
        ),
      ),
    );
  }
}
