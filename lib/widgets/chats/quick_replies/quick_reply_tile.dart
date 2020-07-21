import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/models/quick_reply.dart';
import 'package:travelapp/utils/app_color.dart';
import '../../btn_icon.dart';


class QuickReplyTile extends StatelessWidget {

  final QuickReply quickReply;
  final Function onChoose;

  const QuickReplyTile({Key key,@required this.quickReply, this.onChoose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>onChoose(quickReply.message),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(quickReply.title,
                style: TextStyle(
                    color: AppColor.darkTextColor.withOpacity(0.9),
                    fontSize: 11.0
                ),
                ),
                Row(
                  children: <Widget>[
                    BtnIcon(icon: Icons.edit, size: 14.0, color: AppColor.btnPrimaryColor, onClick: null),
                    BtnIcon(icon: Icons.clear, size: 14.0, color: AppColor.btnPrimaryColor, onClick: null),
                  ],
                )
              ],
            ),
            Text(quickReply.message,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
