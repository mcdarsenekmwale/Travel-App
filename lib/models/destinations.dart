import 'package:flutter/cupertino.dart';

class Destinations{

  final String city;
  final String country;
  final String description;
  final String image;
  final int rating;


  Destinations( { @required this.image, @required this.rating, @required this.city, @required this.description, @required this.country, });

}

List<Destinations> destinations = [
  Destinations(
    image: 'assets/images/image4.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.'+description,
    rating: 5,
  ),
  Destinations(
    image: 'assets/images/image2.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.'+description,
    rating: 5,
  ),
  Destinations(
    image: 'assets/images/image3.jpg',
    city: 'Santorini',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure. '+description,
    rating: 4,
  ),
  Destinations(
    image: 'assets/images/image8.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.'+description,
    rating: 3,
  ),
  Destinations(
    image: 'assets/images/image1.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.'+description,
    rating: 4,
  ),
  Destinations(
    image: 'assets/images/carbin.jpg',
    city: 'New York ',
    country: 'USA',
    description: 'Visit New York for an amazing and unforgettable adventure.'+description,
    rating: 4,
  ),
  Destinations(
    image: 'assets/images/building.jpg',
    city: 'Brazil',
    country: 'Brazil',
    description: 'Visit New York for an amazing and unforgettable adventure.'+description,
    rating: 4,
  ),
  Destinations(
    image: 'assets/images/lake.jpg',
    city: 'Hong Kong',
    country: 'China',
    description: 'Visit New York for an amazing and unforgettable adventure.'+description,
    rating: 4,
  ),
];

String description = "You can also get up close and touch many of the creatures. You can't miss the fascinating killer whale show and fun performances by dolphins and sea lions.";