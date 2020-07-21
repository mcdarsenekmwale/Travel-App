
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travelapp/models/user_chats.dart';
import 'package:travelapp/screens/conversation_screen.dart';
import 'package:travelapp/widgets/chats/user_chat_tile.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 3.0),
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: userChats.length,
          itemBuilder: (context, index){

            return GestureDetector(
              onTap: ()=>Navigator.of(context).push(PageTransition(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.linear,
                  type: PageTransitionType.leftToRight,
                  child: ConversationScreen(
                    user: userChats[index].user,
                  ))),
                child: UserChatTile(userChats: userChats[index])
            );
          }),
    );
  }
}
