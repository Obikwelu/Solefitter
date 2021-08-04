import 'package:flutter/material.dart';
import 'package:production/body.dart';
import 'package:production/size.dart';

class Onboarding extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    Size().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
