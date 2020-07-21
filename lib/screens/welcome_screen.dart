
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travelapp/screens/pages/carousel_page.dart';
import 'package:travelapp/utils/app_constants.dart';
import 'package:travelapp/widgets/carousel/carousel_indicators.dart';

import 'main_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  CarouselController btnCarouselController = CarouselController();
  int _currentIndex = 0;
  List<Map> carousels = [
    {
      "position":1,
      "image":"assets/images/bookmark3.png",
      "title":"Explore New Places",
      "subtitle":"Explore and visit the most beautiful destinations and enjoy your memorable journey."
    },
    {
      "position":2,
      "image":"assets/images/bookmark7.jpg",
      "title":"Ride your Best Place",
      "subtitle":"Explore and visit the most beautiful destinations and enjoy your memorable journey."
    },
    {
      "position":3,
      "image":"assets/images/bookmark9.jpg",
      "title":"Communicate with Friends",
      "subtitle":"Explore and visit the most beautiful destinations and enjoy your memorable journey."

    },
  ] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: AppConstants.appWidth,
        height: AppConstants.appHeight,
        child: Stack(
          children: <Widget>[
            CarouselSlider(
              carouselController: btnCarouselController,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                autoPlayAnimationDuration:Duration(milliseconds: 500),
                reverse: false,
                enableInfiniteScroll: false,
                enlargeCenterPage: false,
                  onPageChanged: (index, reason) => setState(()=> _currentIndex = index)
              ),
              items: carousels.map((carousel) => CarouselPage(
                image: carousel["image"],
                title: carousel["title"],
                subtitle: carousel["subtitle"],
              )).toList()
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.width*0.15,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  width: MediaQuery.of(context).size.width ,
                  child: CarouselIndicators(
                    position: _currentIndex,
                    actionFunction:onAction,
                    actionText: (_currentIndex == 2)?"All set": "Next",

                  ),
                )
            )
          ],
        )
      ),
    );
  }
  onAction (){
    if (_currentIndex!= 2 )
      return  btnCarouselController.nextPage(
        duration: Duration(milliseconds: 200),
        curve: Curves.linear);
    else
      Navigator.push(context, PageTransition(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
          type: PageTransitionType.fade,
          child: MainScreen()));
  }
}
