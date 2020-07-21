
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/chatMessages.dart';
import 'package:travelapp/screens/pages/image_viewer_page.dart';
import 'package:travelapp/utils/app_color.dart';

class ImageStory extends StatelessWidget {

  final ChatMessage chatMessage;


  const ImageStory({Key key,@required this.chatMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: ()=>Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>
                  ImageViewerPage(image: chatMessage.image,)
              )
          ),
      child: Column(
        crossAxisAlignment:chatMessage.isMe?CrossAxisAlignment.end : CrossAxisAlignment.start  ,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30.0, bottom: 1.0),
            child: Text('Sent story',
              style: TextStyle(
                  color: AppColor.darkTextColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0
              ),
            ),
          ),
          Hero(
            tag: chatMessage.image,
            child: Image.asset(chatMessage.image,
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width*0.5,),
          ),
        ],
      ),
    );
  }
}
