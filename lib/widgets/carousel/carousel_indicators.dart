
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselIndicators extends StatelessWidget {

  final String actionText;
  final Function actionFunction;
  final int position;

  CarouselIndicators({Key key,@required this.actionText,@required this.actionFunction,@required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [0,1,2].map((pos) => _buildIndicatorBoxes(pos)).toList()
          ),
          SizedBox(width:MediaQuery.of(context).size.width * 0.47 ,),
          GestureDetector(
            onTap: actionFunction ,
            child: Container(
              child: Text(actionText.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIndicatorBoxes(pos){
    return  Container(
      height: 20.0,
      width: 20.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          color: (pos == position)? Colors.grey.shade200 : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.grey.shade200, width: 2.0)
      ),
    );
  }

}
