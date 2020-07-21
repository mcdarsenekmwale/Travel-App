import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/category/category_item.dart';

class CategoryBar extends StatelessWidget {

  final Function onTapCategory;
  final int index;
  CategoryBar({Key key, this.onTapCategory, this.index}) : super(key: key);

  static List<Map> categories = [
    {
      "icon":"assets/icons/summer.svg",
      "title":"Nature"
    },
    {
      "icon":"assets/icons/museum.svg",
      "title":"Heritage"
    },
    {
      "icon":"assets/icons/couple.svg",
      "title":"Romantic"
    },
    {
      "icon":"assets/icons/church_1.svg",
      "title":"Religious"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.symPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories.asMap().entries.map(( MapEntry category) =>
            GestureDetector(
                onTap:()=>onTapCategory(category.key),
                child: CategoryItem(
                  category: category.value,
                  isSelected: index == category.key,
                )
            )
        ).toList() ,
      ),
    );
  }
}
