import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/destinations.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'file:///E:/OLD%20PROJECTS/travel_app/lib/widgets/category/category_bar.dart';
import 'package:travelapp/widgets/search_component.dart';
import 'package:travelapp/widgets/destination/seasonal_suggestion_card.dart';
import 'package:travelapp/widgets/section_header.dart';
import 'package:travelapp/widgets/destination/trip_card.dart';

class HomePage extends StatefulWidget {

  const HomePage({@required Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;
  List<Destinations> getMostVisitedTrips(){
    List<Destinations> mTrips = [];
    destinations.forEach((element) {
      if(element.rating == 5)
        mTrips.add(element);
    });
    return mTrips;
  }

  onTapCategory(int index){
   setState(() {
     selectedIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, right: 8.0, left: 8.0, bottom: 2.0),
        child: ListView(
          shrinkWrap: false,
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text('Welcome to Explore Travel',
              style: TextStyle(
                color: AppColor.secondaryTextColor,
                fontSize: 23.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic
              ),),
            ),
            Padding(
              padding: AppConstants.symPadding,
              child: SearchComponent(
              ),
            ),
            Padding(
              padding: AppConstants.symHorizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Search by Category',
                    style: TextStyle(
                        color: AppColor.darkTextColor,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                    ),),
                  Container(
                    width:MediaQuery.of(context).size.width*0.2,
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                    margin: EdgeInsets.only(top: 5.0),
                    decoration: BoxDecoration(
                        color: AppColor.btnPrimaryColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                  )
                ],
              ),
            ),
            CategoryBar(
              index: selectedIndex,
              onTapCategory: onTapCategory,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SectionHeader(
                    title: "Most Visited Trips",
                    fontSize: 23.0,
                  ),
                  Container(
                    margin: AppConstants.symHorizontalPadding,
                    height: MediaQuery.of(context).size.width*0.68,
                    color: Color(0xFFF3F5F7),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: getMostVisitedTrips().length,
                        itemBuilder:(BuildContext context, int index){
                          Destinations destination = getMostVisitedTrips()[index];
                          return  TripCard(
                              destination: destination,
                              subtitle: "7N 8D - 70000/ Person",
                          );
                        } ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SectionHeader(
                    title: "Seasonal Suggestions",
                    fontSize: 23.0,
                  ),
                  Container(
                    margin: AppConstants.symHorizontalPadding,
                    height: MediaQuery.of(context).size.width*0.85,
                    color: Color(0xFFF3F5F7),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                          SeasonalSuggestionCard(
                            destination: destinations[5],
                            subtitle: "6N 7D - 60000/ Person",
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.width*0.37,
                                child: SeasonalSuggestionCard(
                                  destination: destinations[6],
                                  subtitle: "5N 6D - 55000/ Person",
                                ),
                              ),

                              Container(
                                height: MediaQuery.of(context).size.width*0.48,
                                child: SeasonalSuggestionCard(
                                  destination: destinations.last,
                                  subtitle: "10N 11D - 7000/ Person",
                                ),
                              )
                            ],
                          )
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
