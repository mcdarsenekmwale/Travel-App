
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/quick_reply.dart';
import 'package:travelapp/widgets/chats/quick_replies/quick_reply_header.dart';
import 'package:travelapp/widgets/chats/quick_replies/quick_reply_tile.dart';

class QuickReplies extends StatefulWidget {

  const QuickReplies({Key key, }) : super(key: key);

  @override
  _QuickRepliesState createState() => _QuickRepliesState();
}

class _QuickRepliesState extends State<QuickReplies> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuickReplyHeader(),
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: ListView.separated(
          itemCount: replies.length,
          itemBuilder: (context, index){
            return QuickReplyTile(
                quickReply: replies[index],
                onChoose:(message)=> Navigator.of(context).pop({'reply':message}),
            );
          }, separatorBuilder: (BuildContext context, int index) {
              return Divider();
          },
        ),
      ),
    );
  }

}
