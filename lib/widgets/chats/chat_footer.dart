import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/models/chatMessages.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/chats/quick_replies/quick_replies.dart';
import '../btn_icon.dart';
import 'chat_box.dart';

class ChatFooter extends StatefulWidget {
  @override
  _ChatFooterState createState() => _ChatFooterState();
}

class _ChatFooterState extends State<ChatFooter> {

  TextEditingController _textEditingController = new TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _chatHeight,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        constraints:  BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height* 0.13,
        ),
        decoration: BoxDecoration(
            color: AppColor.appShadyBackgroundColor,
            borderRadius: AppConstants.appIconRadius
        ),
        child: Row(
          children: <Widget>[
            BtnIcon(icon:  FontAwesomeIcons.paperclip, onClick: null),
            Expanded(
                child:ChatBox(
                  textController: _textEditingController,
                  onTyping: onTyping,
                )
            ),
            Visibility(
                visible: _textEditingController.text.isNotEmpty,
              replacement: BtnIcon(
                    icon:  FontAwesomeIcons.commentDots,
                    onClick: ()=>quickReplyWindow(context).then(
                            (data) =>setState(
                                    (){
                                      message=data['reply'];
                                      _textEditingController.text = message;
                                    })
                    )
                ),
              child: BtnIcon(
                  icon:  FontAwesomeIcons.solidPaperPlane,
                  onClick: onSendMessage
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> quickReplyWindow(BuildContext context) async {
    return showDialog<Map<String, dynamic>>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return Dialog(
              insetPadding: EdgeInsets.only(top: 1) ,
              insetAnimationDuration: Duration(milliseconds: 200),
              backgroundColor: AppColor.appBackgroundColor,
              child: QuickReplies()
          );
        });
  }

  //get the height with respect to number text typed
  double get _chatHeight =>
      (_textEditingController.text.length>20)?
      (_textEditingController.text.length>50)?
       MediaQuery.of(context).size.height* 0.15:
       MediaQuery.of(context).size.height* 0.1 :
      MediaQuery.of(context).size.height* 0.069;

  //get the current status of the text field
  onTyping(String sMessage)=> setState(()=>message = sMessage);


  // send a message
  onSendMessage() {
   if(message.isNotEmpty)
       chatMessages.add( ChatMessage(
            id: (chatMessages.last.id + 1),
            message: message,
            image: "",
            time: DateFormat.yMd().add_jms().format(DateTime.now()),
            isMe: true
        )
       );
  }

}
