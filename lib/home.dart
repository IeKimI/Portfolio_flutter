import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';
import 'package:web_portfolio/Middle_Projects.dart';
import 'package:web_portfolio/Middle_coursework.dart';
import 'package:web_portfolio/Middle_language.dart';
import 'package:web_portfolio/footer.dart';
import 'package:web_portfolio/header.dart';
import 'package:web_portfolio/middle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        IntroductionWidget().p16(),
        MiddleScreenTwo(),
        MiddleScreenCourse(),
        MiddleScreen(),
        // MiddleProject(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
