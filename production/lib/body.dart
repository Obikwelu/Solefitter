import 'package:flutter/material.dart';
import 'package:production/constants.dart';
import 'package:production/onboarding_content.dart';
import 'package:production/screens/dashscreen.dart';
//import 'package:production/constants.dart';
import 'package:production/size.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {
      "text": "Introducing Solefitter, Nigeria's first Bespoke Shoe Feet Maker",
      "image": "assets/onboarding 1.PNG"
    },
    {
      "text":
          "Accurately save the size of your feet for a perfect pair of shoes",
      "image": "assets/onboarding 2.PNG"
    },
    {
      "text":
          "Great way to finally measure your feet without the hassle and guessing",
      "image": "assets/onboarding 3.PNG"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: FlatButton(
                    minWidth: 2,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    //color: kPrimaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, DashScreen.routeName);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingData[index]["image"],
                  text: onboardingData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: kPrimaryColor,
                          onPressed: () {
                            Navigator.pushNamed(context, DashScreen.routeName);
                          },
                          child: Text(
                            "Get started",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                color: Colors.white),
                          )),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
