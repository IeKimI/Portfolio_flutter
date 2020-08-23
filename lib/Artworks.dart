import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';

class ArtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolers.secondaryColor,
      body: ContentPage(),
    );
  }
}

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

const baseUrl = "assets/";

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: (context.isMobile ? 2 : 4),
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                Container(
                  child: Image.asset(baseUrl + 'Clock.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Family.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Father.JPEG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Fix.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Frace3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'France1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'France2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'France3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'France4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(
                    baseUrl + 'Grandpa.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'LP.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'MT.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'NY.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint5.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint6.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint7.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint8.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paint9.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paris.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paris2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Paris3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'photoshop.jpg'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Rain.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Sketch1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Sketch2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Ski.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Sunset.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'VA1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'VA2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'VA3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'VA4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'VA5.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.asset(baseUrl + 'Patin10.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
