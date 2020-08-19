import 'package:flutter/material.dart';
import 'package:majillano_media/screens/constans.dart';
import 'package:majillano_media/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
            itemCount: views.length,
            controller: _pageController,
            itemBuilder: (context, index) {
              return Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                views[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          views[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 236, 34, 40),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          views[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 117, 117, 117),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 130),
              child: SmoothPageIndicator(
                  controller: _pageController, // PageController
                  count: views.length,
                  effect: ScrollingDotsEffect(
                      activeDotColor: Color.fromARGB(255, 236, 34, 40),
                      dotColor: Color.fromARGB(224, 224, 224, 224),
                      fixedCenter: true,
                      spacing: 20) // your preferred effect
                  ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 45,
                width: 150,
                child: RaisedButton(
                  elevation: 0.5,
                  child: Text(
                    'بدء الاستخدام',
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 34, 40),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  color: Color.fromARGB(255, 247, 247, 247),
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
