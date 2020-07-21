
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';

class BtnIcon extends StatelessWidget {
  final Color color;
  final double size;
  final IconData icon;
  final Function onClick;

  const BtnIcon({Key key, this.color,@required this.icon, @required this.onClick, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Icon( icon,
          size: size?? IconTheme.of(context).size,
          color:color?? AppColor.secondaryTextColor.withOpacity(0.8), ),
      ),
    );
  }
}
