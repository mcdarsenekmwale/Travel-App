
import 'package:flutter/cupertino.dart';

class QuickReply{
  final int id;
  final String title;
  final String message;

  QuickReply({@required this.id,@required this.title,@required this.message});

}

List<QuickReply> replies = [
  QuickReply(id: 1, title: 'Greeting', message: "Hello/Greetings! Glad to see your message! Thank you for your patience, I will contact you as soon as possible!"),
  QuickReply(id: 2, title: 'Discount', message: "Thanks for following! Reply to this message and get a 10% discount for your first month of training."),
  QuickReply(id: 3, title: 'Feedback', message: "Hello, beauty! How was the first training? Feel free to leave your impressions in this chat room. Never give up!"),
  QuickReply(id: 4, title: 'Help', message: "Hi! Can I help you to make your personal healthy eating plan?"),
  QuickReply(id: 5, title: 'Goodbye', message: "Thank you for contacting me! Hope to see you soon. Bring your water bottle and strong will."),
];