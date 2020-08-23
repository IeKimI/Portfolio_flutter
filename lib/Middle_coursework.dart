import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';

class MiddleScreenCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Relative Coursework\n".text.xl4.semiBold.white.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(title: "Introduction to Program Design"),
                ProjectWidget(title: "Object-Oriented Design Concepts"),
                ProjectWidget(
                    title:
                        "Introduction to Machine Organization and Assembly Language"),
                ProjectWidget(title: "Algorithms"),
                ProjectWidget(title: "Systems Programming Concepts"),
                ProjectWidget(title: "Computer Networks"),
              ],
              height: 200,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.3,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold
        .color(Coolers.accentColor)
        .xl
        .wide
        .center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
            color: Coolers.primaryColor, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
