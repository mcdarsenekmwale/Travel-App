
import 'package:flutter/cupertino.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class SectionHeader extends StatelessWidget {

  final String title;
  final double fontSize;
  final Color fontColor;
  final double verticalSize;
  final double underlineLength;
  final Function onViewAll;

  const SectionHeader({Key key,@required this.title,@required this.fontSize, this.onViewAll, this.underlineLength, this.verticalSize, this.fontColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.symPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: fontColor?? AppColor.secondaryTextColor,
              ),
              ),
              Container(
                width: underlineLength?? MediaQuery.of(context).size.width*0.35,
                padding: EdgeInsets.symmetric(vertical: verticalSize?? 2, horizontal: 1),
                margin: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                    color: AppColor.btnPrimaryColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(4.0)
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: onViewAll,
            child: Text('View All', style: TextStyle(
                fontSize: 15.0,
                color: AppColor.mainColor,
                fontWeight: FontWeight.w500
            ),),
          ),
        ],
      ),
    );
  }
}
