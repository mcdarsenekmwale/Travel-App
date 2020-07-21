import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/models/chatMessages.dart';
import 'package:travelapp/models/users.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/chats/chat_bubble.dart';
import 'package:travelapp/widgets/chats/chat_footer.dart';
import 'package:travelapp/widgets/chats/conversation_header.dart';

class ConversationScreen extends StatefulWidget {
  final User user;

  const ConversationScreen({Key key, this.user}) : super(key: key);
  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appLightBackgroundColor,
      appBar: ConversationHeader(user: widget.user,),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(bottom:50.0),
             child: ListView.builder(
                 reverse: true,
                 shrinkWrap: true,
                 padding: EdgeInsets.symmetric(vertical: 16.0),
                 itemCount: chatMessages.length,
                 physics: BouncingScrollPhysics(),
                 itemBuilder: (context, index){
                   return ChatBubble(
                       chatMessage: chatMessages.reversed.toList()[index],
                       user: widget.user
                   );
                 }),
            ),
            ChatFooter()
          ],
        ),
      ),
    );
  }
}
