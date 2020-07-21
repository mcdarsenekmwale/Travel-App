
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/destinations.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/destination/detail_list_item.dart';
import 'package:travelapp/widgets/start_rating.dart';
import 'destination_description.dart';
import '../detail_badge.dart';

class DetailHeader extends StatelessWidget {

  final Destinations destination;
  final List<String> categories;

  const DetailHeader({Key key,@required this.destination, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20.0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                destination.city,
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(
                    color: AppColor.secondaryTextColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5
                ),
              ),
              StarRating(
                rating: destination.rating,
                size: 26.0,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  DetailBadge(
                        title: "romantic".toUpperCase(),
                        bgColor:Colors.pinkAccent.shade100.withOpacity(0.6) ,
                        fgColor: Colors.pink,
                  ),
                  DetailBadge(
                    title: "travel".toUpperCase(),
                    bgColor:Colors.orangeAccent.shade100.withOpacity(0.6) ,
                    fgColor: Colors.orange.shade800,
                  ),
                  DetailBadge(
                    title: "natural".toUpperCase(),
                    bgColor:Colors.green.shade100.withOpacity(0.6) ,
                    fgColor: Colors.green,
                  ),
                  SizedBox(width: 5.0,),
                ],
              ),

            ],
          ),

          DetailListItem(
            title: '5 Nights 6 Days only for MK 45000/ person',
            fontSize: 15.0,
          ),
          DetailListItem(
            title: '18th July to 23rd Aug',
            fontSize: 15.0,
          ),

          DestinationDescription(
            description: destination.description,
          )
        ],
      ),
    );
  }
}
