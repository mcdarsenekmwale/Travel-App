import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/widgets/carousel/carousel_indicators.dart';

class CarouselPage extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;

  CarouselPage({Key key, @required this.image, @required this.title, @required this.subtitle, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),
              fit: BoxFit.cover)
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.3)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight
            )
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.32,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                width: MediaQuery.of(context).size.width ,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(subtitle,
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

}
