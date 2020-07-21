
import 'package:flutter/cupertino.dart';
import 'package:travelapp/models/users.dart';

class UserChat{

  final int id;
  final int count;
  final String message;
  final String time; //  final DateTime time;
  final bool isRead;
  final User user;

  UserChat( {this.count,  @required this.id, @required this.message,@required this.isRead, this.time, @required this.user});

}

List<UserChat> userChats = [

  UserChat(id:1, message: "Yes I have seen Paris package for you", isRead: false, count:2, time:"5:00 pm",
      user: User(id: 1, name: "John Watson", image: "assets/images/chats/thumb.jpg")
  ),
  UserChat(id:2, message: "Yes I am starting to pack my bags.. Excited", isRead: false, count:1,  time:"6:00 am",
      user: User(id: 8, name: "Christina Archie", image: "assets/images/chats/thumb1.jpg")
  ),
  UserChat(id:3, message: "What's up!! hope you are doing well", isRead: true,  time:"5:00 am",
      user: User(id: 6, name: "Aradhya Sharma", image: "assets/images/chats/thumb2.jpg")
  ),
  UserChat(id:4, message: "Hie, how are you", isRead: true,  time:"4:30 am",
      user: User(id: 4, name: "Chirag Raghani", image: "assets/images/chats/thumb3.jpg")
  ),
  UserChat(id:5, message: "Yes I am around", isRead: false, count:3,  time:"12:00 am",
      user: User(id: 5, name: "McDonald Watson", image: "assets/images/chats/thumb4.jpg")
  ),
  UserChat(id:6, message: "What package is that?", isRead: true, time:"Yesterday",
      user: User(id: 3, name: "Asim Ali", image: "assets/images/chats/thumb5.jpg")
  ),
  UserChat(id:7, message: "Package for them are always good", isRead: true, time:"Yesterday",
      user: User(id: 2, name: "Walter Mogha", image: "assets/images/chats/thumb6.jpg")
  ),
  UserChat(id:8, message: "How are you?", isRead: true, time:"12 Jan",
      user: User(id: 7, name: "Roland Layne", image: "assets/images/chats/thumb7.jpg")
  ),
  UserChat(id:9, message: "No, I have never beem there ", isRead: true, time:"12 Aug",
      user: User(id: 11, name: "Rashmi Desai", image: "assets/images/chats/thumb8.jpg")
  ),
  UserChat(id:10, message: "What was that like?", isRead: false,  count:5,  time:"12 June",
      user: User(id: 10, name: "Alex Foster", image: "assets/images/chats/thumb9.jpg")
  ),
];