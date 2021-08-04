import 'package:flutter/widgets.dart';
import 'package:production/onboarding.dart';
import 'package:production/screens/dashscreen.dart';
import 'package:production/screens/home.dart';
import 'package:production/screens/scan.dart';

final Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => Onboarding(),
  DashScreen.routeName: (context) => DashScreen(),
  Home.routeName: (context) => Home(),
  ARScan.routeName: (context) => ARScan(),
};
