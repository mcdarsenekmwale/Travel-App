import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/models/chatMessages.dart';
import 'package:travelapp/models/users.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/chats/message_box.dart';
import 'image_story.dart';

class ChatBubble extends StatelessWidget {

  final ChatMessage chatMessage;
  final User user;

  const ChatBubble({Key key,@required this.chatMessage,@required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chatMessage.isMe?
          Alignment.topRight:
          Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical:13.0, horizontal: 6.0),
          child: Row(
            mainAxisAlignment:chatMessage.isMe?MainAxisAlignment.end : MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              drawLeadingImage(chatMessage.isMe),
              Column(
                crossAxisAlignment:chatMessage.isMe?CrossAxisAlignment.end : CrossAxisAlignment.start  ,
                children: <Widget>[
                 Visibility(
                      visible: chatMessage.image.isEmpty,
                      replacement:ImageStory(
                        chatMessage: chatMessage,
                      ),
                      child: MessageBox(
                        chatMessage: chatMessage,
                     )
                 ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:8.0, horizontal: 4.0),
                    child: Text(chatMessage.time,
                      style: TextStyle(
                        color: AppColor.darkTextColor.withOpacity(0.7),
                        fontSize: 10.0
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        )
    );
  }

  Widget drawLeadingImage(bool isMe){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Visibility(
        visible: isMe,
        child: Container() ,
        replacement: CircleAvatar(
          backgroundImage: AssetImage(user.image,),
          maxRadius: 16.0,
        ),
      ),
    );
  }

}
