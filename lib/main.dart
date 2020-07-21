import 'package:flutter/material.dart';
import 'package:travelapp/screens/welcome_screen.dart';
import 'package:travelapp/utils/app_constants.dart';

void main() {
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
        title: 'travelApp',
        theme: AppConstants.appTheme,
        home: WelcomeScreen(),
    )
  );
}
