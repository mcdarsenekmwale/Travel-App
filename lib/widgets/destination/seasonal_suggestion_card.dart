
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travelapp/models/destinations.dart';
import 'package:travelapp/screens/destination_details_screen.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';

class SeasonalSuggestionCard extends StatelessWidget {

  final Destinations destination;
  final String subtitle;
  final double cardWidth;
  final double cardHeight;

  const SeasonalSuggestionCard({Key key, this.destination, this.subtitle, this.cardWidth, this.cardHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, PageTransition(
          duration: Duration(milliseconds: 500),
          curve: Curves.linear,
          type: PageTransitionType.fade,
          child: DestinationDetailScreen(
            destination: destination,
          ))),
      child: Container(
        margin: EdgeInsets.only(right: 15.0, bottom: 8.0),
        width: MediaQuery.of(context).size.width *0.58,
        decoration: BoxDecoration(
            borderRadius: AppConstants.appRadius,
            image: DecorationImage(image: AssetImage(destination.image),
                fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade50,
                  offset: Offset(1.0, 1.0)
              )
            ]
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: AppConstants.appRadius,
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.2)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
                  width: MediaQuery.of(context).size.width*0.31 ,
                  height: MediaQuery.of(context).size.width*0.13,
                  decoration: BoxDecoration(
                    color: AppColor.navPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0)
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Text(destination.city,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text(subtitle??"",
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
