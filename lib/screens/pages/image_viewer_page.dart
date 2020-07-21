
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViewerPage extends StatefulWidget {

  final String image;

  const ImageViewerPage({Key key,@required this.image}) : super(key: key);

  @override
  _ImageViewerPageState createState() => _ImageViewerPageState();
}

class _ImageViewerPageState extends State<ImageViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Hero(
          tag: widget.image,
          child: Image.asset(widget.image,
           fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
