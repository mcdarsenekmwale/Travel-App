import 'package:flutter/cupertino.dart';
import 'package:travelapp/utils/app_color.dart';

class ProfileSubHeaderItem extends StatelessWidget {

  final String title;
  final String subtitle;

  const ProfileSubHeaderItem({Key key,@required this.title,@required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title,
            style: TextStyle(
                color: AppColor.secondaryTextColor,
                fontWeight: FontWeight.w800,
                fontSize: 23.0
            ),
          ),
          Text(subtitle,
            style: TextStyle(
                color: AppColor.darkTextColor,
                fontSize: 16.0
            ),
          )
        ],
      ),
    );
  }
}
