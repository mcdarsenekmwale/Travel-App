
import 'package:flutter/cupertino.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/chats/chat_navigation_item.dart';

class ChatNavigationHeader extends StatelessWidget {

  final int index;
  final Function onNavigation;
  const ChatNavigationHeader({Key key, this.index, this.onNavigation}) : super(key: key);
  static List<String> navItems = [
      "Friends",
      "Chats",
      "Invite"
  ];

  @override
  Widget build(BuildContext context) {
  print(index);
    return Container(
      margin: AppConstants.symVerticalPadding,
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      decoration: BoxDecoration(
          color: AppColor.navPrimaryColor.withOpacity(0.5),
          borderRadius: AppConstants.appRadius
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: navItems.asMap().entries.map(
                (MapEntry map) =>
                    GestureDetector(
                      onTap: ()=>onNavigation(map.key),
                      child: ChatNavigationItem(
                        title: map.value,
                        isAction: index == map.key,
                      ),
                    )
        ).toList()
      ),
    );
  }
}
