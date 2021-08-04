import 'package:flutter/material.dart';
import 'package:production/size.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenWidth(300),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
//
//
