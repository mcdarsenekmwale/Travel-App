import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBadge extends StatelessWidget {

  final String title;
  final Color fgColor;
  final Color bgColor;
  DetailBadge({Key key,@required this.title, this.fgColor, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(5.0),
      padding: EdgeInsets.symmetric(vertical:3.0, horizontal: 6.0),
      decoration: BoxDecoration(
          color: bgColor??Colors.deepOrange.shade700,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Text(title,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            color: fgColor?? Colors.white
        ),),
    );
  }
}