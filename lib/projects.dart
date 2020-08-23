import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web_portfolio/Coolors.dart';
import 'package:web_portfolio/home.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        Button(),
        // ProjectOneWidget(),
        // // if (context.isMobile)
        // //   Container(
        // //     child: ProjectOneWidget().p16(),
        // //     color: Coolers.accentColor,
        // //   ),
        // ProjectTwoWidget(),
        // ProjectThreeWidget(),
        // ProjectFourWidget(),
        ContentPage(),

        // if (context.isMobile)
        //   Container(
        //     child: ProjectTwoWidget().p16(),
        //     color: Coolers.primaryColor,
        //   ),
      ]).scrollVertical(),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Coolers.primaryColor,
      child: (context.isMobile
          ? new Container(
              height: 200,
              color: Coolers.primaryColor,
            )
          : new IconButton(
              alignment: Alignment.topLeft,
              color: Coolers.accentColor,
              icon: new Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
            )),
    );
  }
}

class ProjectOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.accentColor,
      child: VStack(
        [
          [
            40.heightBox,
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              width: 400,
              color: Coolers.primaryColor,
              child: "Projects"
                  .richText
                  .color(Coolers.accentColor)
                  .widest
                  .lg
                  .bold
                  .size(30)
                  .make(),
            ),
            30.heightBox,
            Container(
              padding: EdgeInsets.all(20),
              child: "1.  A* Pathfinding Visualizer"
                  .text
                  .black
                  .medium
                  .bold
                  .size(20)
                  .make()
                  .w(context.isMobile
                      ? context.screenWidth
                      : context.percentWidth * 40),
            ),
            ProjectOnePicture(),
            Container(
              padding: EdgeInsets.all(20),
              width: 700,
              child: VStack([
                "This is a visualizer that shows the shortest path from a start to the end you pick. It utilizes the"
                    .richText
                    .withTextSpanChildren([
                      "\nA* Pathfinding Algorithm.".textSpan.yellow400.make()
                    ])
                    .black
                    .sm
                    .bold
                    .size(15)
                    .make(),
                " \n [A quick summary of A* search Algorithm]\n"
                    .richText
                    .black
                    .sm
                    .size(15)
                    .bold
                    .make(),
                "-> Starting from a start node, it finds the shortest path to the end node f(n) = g(n) + h(n)\ng(n): distance from the start node to n \nh(n): heuristic-the shortest distance from n to the end \n-> It uses a priority queue to perform the repeated selection of the shortest path. At each step of the algorithm, the node with the lowest f(n) value is removed from the queue, the f and g values of its neighbors are updated accordignly, and these neighbors are added to the queue. The algorithm continues until it reaches the lowest f value in the queue - until the queue is empty."
                    .text
                    .black
                    .make(),
                20.heightBox,
              ]),
            )
          ].vStack(),
          30.heightBox,
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class ProjectOnePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/Pathfinding.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 30,
      ),
    );
  }
}

class ProjectTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack(
        [
          [
            25.heightBox,
            Container(
              padding: EdgeInsets.all(20),
              child: "2.  Jarvis".text.white.medium.bold.size(20).make().w(
                  context.isMobile
                      ? context.screenWidth
                      : context.percentWidth * 40),
            ),
            ProjectTwoPicture(),
            "This is a simple "
                .richText
                .withTextSpanChildren(["AI system".textSpan.yellow400.make()])
                .white
                .sm
                .bold
                .size(15)
                .make(),
            "coded in Python.".richText.white.sm.size(15).bold.make(),
            Container(
              padding: EdgeInsets.all(20),
              width: 700,
              child: VStack([
                "Inspired by Jarvis featured in Marvel, I have coded a few commands such as opening chrome, youtube, and github, taking notes, and etc."
                    .text
                    .white
                    .make(),
                20.heightBox,
              ]),
            )
          ].vStack(),
          30.heightBox,
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class ProjectTwoPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/Pathfinding.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 30,
      ),
    );
  }
}

class ProjectThreeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.accentColor,
      child: VStack(
        [
          [
            25.heightBox,
            Container(
              padding: EdgeInsets.all(20),
              child: "3.  Recipe Search App: EriKimcheese"
                  .text
                  .black
                  .medium
                  .bold
                  .size(20)
                  .make()
                  .w(context.isMobile
                      ? context.screenWidth
                      : context.percentWidth * 40),
            ),
            ProjectTwoPicture(),
            "When you type in the ingredient you have, it generates some recipes you can cook."
                .richText
                .black
                .sm
                .bold
                .size(15)
                .make(),
            Container(
              padding: EdgeInsets.all(20),
              width: 700,
              child: VStack([
                "This is the first app I made using dart/flutter. Being indecisve on what to cook for meals have made me think of this idea and following some tutorials on Youtube, I implemented the API and created this app."
                    .text
                    .black
                    .make(),
                20.heightBox,
              ]),
            )
          ].vStack(),
          30.heightBox,
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class ProjectThreePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/Pathfinding.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 30,
      ),
    );
  }
}

class ProjectFourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack(
        [
          [
            25.heightBox,
            Container(
              padding: EdgeInsets.all(20),
              child: "4.  Movie Search App: Kimovie"
                  .text
                  .white
                  .medium
                  .bold
                  .size(20)
                  .make()
                  .w(context.isMobile
                      ? context.screenWidth
                      : context.percentWidth * 40),
            ),
            ProjectTwoPicture(),
            "This app contains the information about movies."
                .richText
                .white
                .sm
                .size(15)
                .bold
                .make(),
            Container(
              padding: EdgeInsets.all(20),
              width: 700,
              child: VStack([
                "You can search the movie title and get the information or just take a look at popular and recent movies on the home screen."
                    .text
                    .white
                    .make(),
                20.heightBox,
              ]),
            )
          ].vStack(),
          30.heightBox,
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class ProjectFourPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/Pathfinding.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 30,
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
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
  "This is a visualizer that shows the shortest path from a start to the end you pick. It utilizes the A* Pathfinding Algorithm.",
  'This is Jarvis, a simple AI program.',
  'This is a Recipe Search App. When you type in the ingredient you have, it generates some recipes you can cook.',
  'This is a Movie Search App. It contains the overview, trailer, and rating of movies.'
];

const summary = [
  "[A quick summary of Backtracking Algorithm]\n If it is found that the current number cannot be a solution, it backtracks and tries the next number. This is more efficient than trying eveyr single possible combination one by one.",
  "[A quick summary of A* search Algorithm]\n  -> Starting from a start node, it finds the shortest path to the end node f(n) = g(n) + h(n)\n  g(n): distance from the start node to n \n  h(n): heuristic-the shortest distance from n to the end \n  -> It uses a priority queue to perform the repeated selection of the shortest path. \n  At each step of the algorithm, the node with the lowest f(n) value is removed from the queue, the f and g values of its neighbors are updated accordignly, and these neighbors are added to the queue. \n  The algorithm continues until it reaches the lowest f value in the queue - until the queue is empty.",
  "Inspired by Jarvis featured in Marvel, I have coded a few commands as follows: \n - Open chrome\n - Open youtube, github, or facebook \n - Take notes\n - Search on Wikipedia\n - Search on Google",
  "This is the first app I made using dart/flutter. \nBeing indecisve on what to cook for meals have made me think of this idea and following some tutorials on Youtube, I implemented the Edamam API and created this app.",
  "You can search the movie title and get the information or just take a look at popular and recent movies on the home screen."
];
const baseUrl = "assets/";

const _images = [
  baseUrl + 'Sudoku.PNG',
  baseUrl + 'Pathfinding.png',
  baseUrl + 'Jarvis.PNG',
  baseUrl + 'EriKimcheese.png',
  baseUrl + 'Kimovie.PNG',
];
int currentIndexPage = 0;

class _ContentPageState extends State<ContentPage> {
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
                return SingleChildScrollView(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Coolers.primaryColor),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 320,
                              height: 320,
                              child: Center(
                                child: Image.asset(
                                  _images[i],
                                  width: 300,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff96737E)),
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
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: new Text(
                                descriptions[i],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Coolers.accentColor, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(30),
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                color: Color(0xffA78B94),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: new Text(
                                summary[i],
                                // textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 2,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                );
              },
            );
          }).toList(),
        ),
        (context.isMobile
            ? Positioned(
                bottom: 60,
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
              )
            : Positioned(
                bottom: 100,
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
              ))
      ],
    );
  }
}
