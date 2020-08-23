import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/Coolors.dart';

class MiddleProject extends StatefulWidget {
  @override
  MiddleProjectState createState() => MiddleProjectState();
}

const titles = [
  'Sudoku Solver',
  'A* Pathfinding Visualizer',
  'Jarvis',
  'Recipe App: EriKimcheese',
  'Movie Search App: Kimovie'
];
const descriptions = [
  'This is a sudoku solver coded in Python.',
  'This is the A* Pathfinding Visulaizer',
  'This is Jarvis inpsired by Marvel movies',
  'This is a Recipe Search App.',
  'This is a Movie Search App'
];
const baseUrl = "assets/";

const _images = [
  baseUrl + 'portrait.png',
  baseUrl + 'Pathfinding.png',
  baseUrl + 'portrait.png',
  baseUrl + 'portrait.png',
  baseUrl + 'portrait.png',
];
int currentIndexPage = 0;

class MiddleProjectState extends State<MiddleProject> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          onPageChanged: (index) {
            setState(() {
              currentIndexPage = index;
            });
          },
          initialPage: 0,
          reverse: false,
          viewportFraction: 1.0,
          height: MediaQuery.of(context).size.height,
          items: [0, 1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Coolers.primaryColor),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 300,
                            child: Center(
                              child: Image.asset(
                                _images[i],
                                width: 250,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Coolers.accentColor),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          new Text(
                            titles[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          new Text(
                            descriptions[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ));
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 30,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: new DotsIndicator(
                  dotsCount: 5,
                  position: currentIndexPage,
                  decorator: DotsDecorator(
                      color: Coolers.accentColor,
                      activeColor: Colors.deepPurple)),
            ),
          ),
        ),
        Positioned(
          top: 50,
          child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 20,
                    height: 1,
                    child: InkWell(
                      child: new Text(
                        'SKIP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
