
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/chatMessages.dart';
import 'package:travelapp/utils/app_color.dart';

class MessageBox extends StatelessWidget {

final ChatMessage chatMessage;

  const MessageBox({Key key,@required this.chatMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(15.0),
      decoration: drawBoxDecoration(chatMessage.isMe),
      constraints: (chatMessage.message.length<32)?BoxConstraints(
          minHeight: 30)
          : BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.78,
          minHeight: 30),
      child: Text(chatMessage.message,
        style: TextStyle(
          height: 1.3,
          color: chatMessage.isMe? Colors.white: AppColor.primaryTextColor,
        ),
      ),
    );
  }

BoxDecoration drawBoxDecoration(bool isMe){
  if(isMe){
    return BoxDecoration(
        color: AppColor.navPrimaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(4.0),
        )
    );
  }
  else {
    return BoxDecoration(
        color: AppColor.navColor.withOpacity(0.4),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(4.0),
          bottomRight: Radius.circular(10.0),
        )
    );
  }
}

}
