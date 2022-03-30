import 'package:flutter/material.dart';
import 'package:weather_app/constants/light_theme.dart';
import 'package:weather_app/constants/routes.dart' as routes;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherApp',
      initialRoute: routes.homeScreen,
      onGenerateRoute: routes.controller,
      theme: CustomLightTheme.lightTheme,
    );
  }
}