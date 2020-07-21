
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  const ImageCard({Key key,@required this.image, this.height, this.width, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          height: height?? MediaQuery.of(context).size.width*0.3,
          width: width?? MediaQuery.of(context).size.width*0.43,
          decoration:BoxDecoration(
              borderRadius: borderRadius?? BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage(image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade100,
                    offset: Offset(1.0, 2.0)
                )
              ]
          ) ,
        ),
      ),
    );
  }
}
