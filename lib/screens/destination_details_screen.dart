import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/destinations.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/destination/details_header.dart';
import 'package:travelapp/widgets/page_header.dart';
import 'package:travelapp/widgets/image_grid.dart';
import 'package:travelapp/widgets/section_header.dart';
import 'package:travelapp/widgets/destination/trip_card.dart';

class DestinationDetailScreen extends StatefulWidget {

  final Destinations destination;
  const DestinationDetailScreen({Key key, this.destination}) : super(key: key);

  @override
  _DestinationDetailScreenState createState() => _DestinationDetailScreenState();
}

class _DestinationDetailScreenState extends State<DestinationDetailScreen> {

  List<Destinations> getOtherDestinations(Destinations destination){
    List<Destinations> mTrips = [];
    destinations.forEach((element) {
      if(element.rating != 5 && destination != element )
        mTrips.add(element);
    });
    return mTrips;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
          height: AppConstants.appHeight,
          width: AppConstants.appWidth,
          child: Stack(
            children: <Widget>[
              PageHeader(
                image: widget.destination.image,
              ),
              Positioned(
                top: 40.0,
                left:15.0 ,
                child: IconButton(icon: Icon(Icons.arrow_back_ios ),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed:()=>Navigator.pop(context)
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: AppConstants.appWidth,
                  margin:EdgeInsets.only(left: 12.0, right: 12, top: MediaQuery.of(context).size.width *0.37),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: AppConstants.topBodyRadius,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade50,
                            offset: Offset(0.0, 1.0)
                        )
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: <Widget>[
                        DetailHeader(
                          destination: widget.destination,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: AppConstants.symHorizontalPadding,
                              child: SectionHeader(
                                  title: "Some Snaps",
                                  fontSize: 23.0,
                                underlineLength: MediaQuery.of(context).size.width*0.22,
                              ),
                            ),
                            ImageGrid(),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: AppConstants.symHorizontalPadding,
                                child: SectionHeader(
                                  title: "Check these out too !!!",
                                  fontSize: 23.0,
                                ),
                              ),
                              Padding(
                                padding:  AppConstants.symHorizontalPadding,
                                child: Row(
                                  children: getOtherDestinations(widget.destination)
                                      .sublist(0,2).map((dest) => TripCard(
                                      destination: dest,
                                      subtitle: "3N 4D - 4000/ Person",
                                      cardMargin:EdgeInsets.symmetric(horizontal: 2.0),
                                      cardHeight:MediaQuery.of(context).size.width*0.5,
                                      cardWidth: MediaQuery.of(context).size.width*0.43,
                                  )
                                  ).toList(),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Padding(
                                padding: AppConstants.symHorizontalPadding,
                                child: Row(
                                  children: getOtherDestinations(widget.destination)
                                      .sublist(3,5).map((dest) => TripCard(
                                    destination: dest,
                                    subtitle: "3N 4D - 4000/ Person",
                                    cardHeight:MediaQuery.of(context).size.width*0.5,
                                    cardMargin:EdgeInsets.symmetric(horizontal: 2.0),
                                    cardWidth: MediaQuery.of(context).size.width*0.43,
                                  )
                                  ).toList(),
                                ),
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}


