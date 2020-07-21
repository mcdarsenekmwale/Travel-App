
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class CategoryItem extends StatelessWidget {
  final Map category;
  final bool isSelected;

  const CategoryItem({Key key,@required this.category, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.043),
          decoration: BoxDecoration(
              color: isSelected? Colors.grey.shade100: AppColor.btnPrimaryColor,
              borderRadius: AppConstants.appIconRadius,
              border: Border.all(color: AppColor.btnPrimaryColor, width: 1.0)
          ),
          child: SvgPicture.asset(
            category["icon"],
            color: isSelected? AppColor.btnPrimaryColor: Colors.grey.shade100,
            height: 35.0,
            width: 35.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:6.0),
          child: Text(category["title"], style: TextStyle(
              color: AppColor.secondaryTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 14.0 //delete
          ),),
        )
      ],
    );
  }
}
