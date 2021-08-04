import 'package:flutter/material.dart';
import 'package:production/constants.dart';
import 'package:production/onboarding.dart';
import 'package:production/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
        ),
        primarySwatch: Colors.teal,
      ),
      //home: Onboarding(),
      initialRoute: Onboarding.routeName,
      routes: routes,
    );
  }
}
