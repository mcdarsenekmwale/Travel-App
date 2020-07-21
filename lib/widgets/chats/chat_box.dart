import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class ChatBox extends StatelessWidget {
  final TextEditingController textController ;
  final Function onTyping;

  const ChatBox({Key key,@required this.onTyping, @required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.secondaryTextColor,
      controller: textController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText:"Type a message",
        hintStyle: TextStyle(color: Colors.grey.shade500),
        hintMaxLines: 500,
        filled: true,
        fillColor: AppColor.appShadyBackgroundColor,
        enabledBorder: AppConstants.chatBoxBorder,
        disabledBorder: AppConstants.chatBoxBorder,
        border: AppConstants.chatBoxBorder,
        errorBorder: AppConstants.chatBoxBorder,
        focusedErrorBorder: AppConstants.chatBoxBorder,
        focusedBorder: AppConstants.chatBoxBorder,
      ),
      autofocus: false,
      maxLines: 500,
      keyboardType: TextInputType.multiline,
      style: TextStyle(
          color: AppColor.primaryTextColor, fontSize: 17.0
      ),
      onChanged:(value) =>onTyping(value),
    );
  }
}
