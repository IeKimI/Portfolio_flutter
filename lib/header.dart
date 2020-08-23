import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Artworks.dart';
import 'package:web_portfolio/Coolors.dart';
import 'package:web_portfolio/projects.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = "Eri\nKim"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 25)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 50.heightBox else 20.heightBox,
                // CustomAppBar().shimmer(primaryColor: Coolers.accentColor),
                20.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(context.isMobile ? 65 : 110, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                20.heightBox,
                name,
                20.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(context.isMobile ? 110 : 185, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                30.heightBox,
                SocialAccounts(),
                VxDevice(
                  mobile: HStack(
                    [
                      30.heightBox,
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectsScreen()),
                          );
                        },
                        child: "Explore Projects"
                            .text
                            .color(Colors.black)
                            .semiBold
                            .make(),
                        color: Coolers.accentColor,
                        shape: Vx.roundedSm,
                        hoverColor: Vx.purple700,
                      ).h(50),
                      10.widthBox,
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArtScreen()),
                          );
                        },
                        child:
                            "Artworks".text.color(Colors.black).semiBold.make(),
                        color: Coolers.accentColor,
                        shape: Vx.roundedSm,
                        hoverColor: Vx.purple700,
                      ).h(50),
                    ],
                  ),
                  web: Container(
                    padding: EdgeInsets.only(top: 30),
                    child: HStack(
                      [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProjectsScreen()),
                            );
                          },
                          child: "Explore Projects"
                              .text
                              .color(Colors.black)
                              .semiBold
                              .make(),
                          color: Coolers.accentColor,
                          shape: Vx.roundedSm,
                          hoverColor: Colors.white,
                        ).h(50),
                        10.widthBox,
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArtScreen()),
                            );
                          },
                          child: "Artworks"
                              .text
                              .color(Colors.black)
                              .semiBold
                              .make(),
                          color: Coolers.accentColor,
                          shape: Vx.roundedSm,
                          hoverColor: Colors.white,
                        ).h(50),
                      ],
                    ),
                  ),
                ),
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 35,
              ),
              // Expanded(
              //   child: VxResponsive(
              //     fallback: const Offstage(),
              //     medium: IntroductionWidget()
              //         .pOnly(left: 120)
              //         .h(context.percentHeight * 60),
              //     large: IntroductionWidget()
              //         .pOnly(left: 120)
              //         .h(context.percentHeight * 60),
              //   ),
              // ),
            ],
          ).w(context.screenWidth)
        ]),
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolers.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: VStack(
        [
          [
            10.heightBox,
            "Hello! I am Eri, currently pursuing BS/MS in Computer Science at WPI.\n"
                .richText
                .withTextSpanChildren(
                    ["#Programmer  #Dart Developer".textSpan.yellow400.make()])
                .white
                .medium
                .size(context.isMobile ? 15 : 20)
                .maxLines(5)
                .make()
                .w(context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 50),
            20.heightBox,
          ].vStack(),
          RaisedButton(
            onPressed: () {
              launch("mailto:erikim0413@gmail.com");
            },
            child: "Contact Me".text.make(),
            color: Coolers.accentColor,
            shape: Vx.roundedSm,
            hoverColor: Colors.white,
          ).h(50),
          30.heightBox,
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/Errib10.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.computer,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/profile.php?id=100008053787783");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/erikim_01/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/IeKimI");
      }).make(),
    ].hStack();
  }
}
