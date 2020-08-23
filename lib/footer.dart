import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';
import 'package:web_portfolio/header.dart';
import 'package:web_portfolio/projects.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              20.heightBox,
              "Want to learn more about \n my projects?"
                  .text
                  .white
                  .center
                  .xl2
                  .make(),
              20.heightBox,
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()),
                  );
                },
                child:
                    "Explore Projects".text.color(Colors.black).semiBold.make(),
                color: Coolers.accentColor,
                shape: Vx.roundedSm,
                hoverColor: Vx.purple700,
              ).h(50),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Want to learn more about my projects?"
                  .text
                  .white
                  .center
                  .xl2
                  .make(),
              10.heightBox,
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()),
                  );
                },
                child:
                    "Explore Projects".text.color(Colors.black).semiBold.make(),
                color: Coolers.accentColor,
                shape: Vx.roundedSm,
                hoverColor: Colors.white,
              ).h(50),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 80).p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
