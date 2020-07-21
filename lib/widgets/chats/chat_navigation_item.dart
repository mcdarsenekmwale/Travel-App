
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';

class ChatNavigationItem extends StatelessWidget {

  final String title;
  final bool isAction;

  const ChatNavigationItem({Key key,@required this.title, this.isAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width/3.3,
            padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 30.0),
            decoration: BoxDecoration(
              borderRadius: buildBorderRadius(title),
              color: isAction? AppColor.btnPrimaryColor: Colors.transparent,
            ),
            child: Text(title,
              style: TextStyle(
                  color: Colors.grey.shade50,
                  fontSize: 18.0,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          (title == "Friends" || title == "Chats")? buildHorizontalLine(context):Container()
        ],
      ),
    );
  }

  Widget buildHorizontalLine(BuildContext context){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
      height: MediaQuery.of(context).size.width*0.125,
      decoration: BoxDecoration(
          color:Colors.grey.shade50.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.0)
      ),
    );
  }

  BorderRadius buildBorderRadius(title){
    switch(title){
      case "Friends":
        return BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft:Radius.circular(20.0),
        );
        break;
      case "Chats":
        return BorderRadius.zero;
        break;
      default:
        return BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight:Radius.circular(20.0),
        );
        break;
    }
  }
}
