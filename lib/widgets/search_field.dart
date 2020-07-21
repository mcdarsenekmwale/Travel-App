
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';

class SearchField extends StatelessWidget {
  final Function onSearch;
  final Function onFocus;
  final Widget leftChild;

  SearchField({Key key, this.onSearch, this.onFocus, this.leftChild}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.752,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade200,
                    Colors.grey.shade200,
                  ]
              )
          ),
          alignment: Alignment.centerLeft,
          child: TextFormField(
              style: TextStyle(color:AppColor.primaryTextColor),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0, top: 15.0),
                border: InputBorder.none,
                focusColor: AppColor.primaryTextColor,
                hintText: "Search your destination here ...",
                hintStyle: TextStyle(color: AppColor.mainColor),
                suffixIcon: Icon(Icons.search, color: AppColor.mainColor),
              ),
              onChanged: onSearch,
              onTap: onFocus
          ),
        ),
        SizedBox(width: 6.0,),
        Expanded(
          child: leftChild??Container()
        ),
      ],
    );
  }
}
