import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';

class MiddleScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.accentColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Programming Languages\n".text.xl4.semiBold.black.make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(title: "Java"),
                ProjectWidget(title: "Python"),
                ProjectWidget(title: "C/C++"),
                ProjectWidget(title: "Dart/Flutter"),
              ],
              height: 170,
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
        .color(Coolers.primaryColor)
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
            color: Coolers.accentColor, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
