
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {

  final String image;
  final Widget child;

  const PageHeader({Key key, @required this.image, this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.68,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade50,
                  offset: Offset(0.0, 1.0)
              )
            ]
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: child??Container(),
        ),
      ),
    );
  }
}
