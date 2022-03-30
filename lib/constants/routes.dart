import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen.dart';

const String homeScreen   = 'home';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}