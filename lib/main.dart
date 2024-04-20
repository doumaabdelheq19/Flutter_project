
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_4/Details.dart';
import 'package:flutter_application_4/Home_login.dart';
import 'package:flutter_application_4/Homepage.dart';
import 'package:flutter_application_4/Interest.dart';
import 'package:flutter_application_4/Log_in.dart';
import 'package:flutter_application_4/Profile.dart';
import 'package:flutter_application_4/Saved.dart';
import 'package:flutter_application_4/create_account.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) =>  Homepage(),
     '/saved': (context) =>  Saved(),
      '/Profile': (context) =>  profile(),
     '/Interest': (context) =>  Interest(),
    '/home': (context) =>  Home_login(),
    '/create': (context) =>  create_account(),
     '/login': (context) =>  log_in(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/details': (context) =>  Details(),
  },
    );
  }
}