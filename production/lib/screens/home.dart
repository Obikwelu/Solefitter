import 'package:flutter/material.dart';
import 'package:production/constants.dart';

class Home extends StatefulWidget {
  static String routeName = "/HomeScreen";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int currentIndex = 0;
  // final screens = ["/Home", ARPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey there,',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 0.5),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  "Solefitter is an AR experience for your feet",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Container(
              //   child: Text(
              //     "First of its kind in Nigeria (africa) and we are currently on iOS & android. Join our beta today!",
              //     style: TextStyle(
              //       fontSize: 15,
              //       fontWeight: FontWeight.normal,
              //     ),
              //   ),
              // ),
              Container(
                child: Image.asset("assets/onboarding 4.PNG", scale: 1.2),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "Better experience, more convenient and efficient way of getting fitted.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: kPrimaryColor,
        //     currentIndex: currentIndex,
        //     onTap: (index) => setState(() => currentIndex = index),
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: "Home",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.qr_code_scanner),
        //         label: "AR Scan",
        //       ),
        //     ]),
      ),
    );
  }
}
