import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelapp/screens/welcome_screen.dart';
import 'package:travelapp/utils/app_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
  ).then((_) =>
      runApp(
          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'travelApp',
            theme: AppConstants.appTheme,
            home: WelcomeScreen(),
          )
      )
  );
}
