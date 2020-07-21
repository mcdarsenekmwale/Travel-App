import 'package:flutter/cupertino.dart';

class ChatMessage{

  final int id;
  String message;
  String image;
  final String time; // final DateTime time;
  final bool isMe;

  ChatMessage({@required this.id,@required this.message,@required this.image,@required this.time,@required this.isMe}){
    this.image = image??"";
    this.message = message??"";
  }

}

List<ChatMessage> chatMessages = [
  ChatMessage(id: 1, message: "Hey, I am very curious about your profile", image: "", time: "20:00 pm", isMe: true),
  ChatMessage(id: 2, message: "Thanks, may I help you with something?", image: "", time: "20:02 pm", isMe: false),
  ChatMessage(id: 3, message: "Would like to know about your approach to nutrition and diet", image: "", time: "20:10 pm", isMe: true),
  ChatMessage(id: 4, message: "Can you help?", image: "", time: "20:11 pm", isMe: true),
  ChatMessage(id: 5, message: "Sure, I will be happy to help, we can get in contact and I can tell you in more detail about…", image: "", time: "20:15 pm", isMe: false),
  ChatMessage(id: 6, message: "Will be great", image: "", time: "20:00 pm", isMe: true),
  ChatMessage(id: 7, message: "Individual one-time consultation costs \$ 30 per hour, during this time I will tell you about the technique and set superficial priorities", image: "", time: "20:20 pm", isMe: false),
  ChatMessage(id: 8, message: "and how much does a full course cost?", image: "", time: "20:25 pm", isMe: true),
  ChatMessage(id: 9, message: "Now I cannot name the price, I must find the information about you, we must determine the goals and set the time frame.", image: "", time: "20:26 pm", isMe: false),
  ChatMessage(id: 10, message: "after that, I will prepare an individual nutrition program for a month with clear goals.", image: "", time: "20:26 pm", isMe: false),
  ChatMessage(id: 11, message: "if you are interested we can contact this week..", image: "", time: "20:27 pm", isMe: false),
  ChatMessage(id: 12, message: "ok, I’ll write a little later and set the time", image: null, time: "20:45 pm", isMe: true),
  ChatMessage(id: 13, message: "ok, see you", image: "", time: "21:00 pm", isMe: false),
  ChatMessage(id: 14, message: null, image: "assets/images/chats/story1.jpg", time: "21:10 pm", isMe: true),
  ChatMessage(id: 15, message: "Thank you", image: "", time: "21:20 pm", isMe: false)
];