import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/user_chats.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/detail_badge.dart';

class UserChatTile extends StatelessWidget {

  final UserChat userChats;

  const UserChatTile({Key key,@required this.userChats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(userChats.user.image),
                      maxRadius: 28.0,
                    ),
                    SizedBox(width: 16.0,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userChats.user.name,
                            style: TextStyle(
                              color: userChats.isRead? AppColor.darkTextColor:AppColor.primaryTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0
                            ),),
                            SizedBox(height: 6.0,),
                            Text(userChats.message,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: userChats.isRead? AppColor.darkTextColor:AppColor.secondaryTextColor,
                                  fontSize: 12.0
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(userChats.time,
                  style: TextStyle(
                      color: AppColor.btnPrimaryColor,
                      fontSize: 10.0,
                  ),
                ),
                userChats.count != null?
                DetailBadge(
                    title:userChats.count.toString(),
                    bgColor: AppColor.btnPrimaryColor,
                ):
                Container()
              ],
            )
        ],
      ),
    );
  }
}
