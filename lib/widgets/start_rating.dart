import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;
  final double size;

  const StarRating({Key key,@required this.rating, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> _icons = [];
    for(int i = 0; i< rating; i++){
      _icons.add(Icon(Icons.star, color: Colors.orange[400], size:size?? 22,));
    }
    if(rating < 5)
      for(int y = 0; y < 5-rating; y++)
        _icons.add(Icon(Icons.star_border, color: Colors.orange[400],size:size?? 22));

    return Row(
      children: _icons,
    );
  }

}
