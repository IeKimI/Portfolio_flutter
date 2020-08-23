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
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                Container(
                  child: Image.network(
                    baseUrl + 'Clock.JPG',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Family.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Father.JPEG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Fix.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Frace3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'France1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'France2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'France3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'France4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(
                    baseUrl + 'Grandpa.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'LP.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'MT.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'NY.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint5.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint6.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint7.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint8.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paint9.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paris.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paris2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Paris3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'photoshop.jpg'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Rain.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Sketch1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Sketch2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Ski.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Sunset.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'VA1.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'VA2.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'VA3.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'VA4.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'VA5.JPG'),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  child: Image.network(baseUrl + 'Patin10.JPG'),
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
