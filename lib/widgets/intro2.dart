import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatefulWidget {
  final List<Widget> image;

  const Intro2({Key key, this.image});
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro2> {
  int current;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  introImageSlider(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Testew bwerg wgt wrhrterrthreht erh hgiewrfrg erughweirughiewr iergrhwe eorgrpoewrg oergr',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Text(
                      'Getting Started',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column introImageSlider() {
    return Column(
      children: [
        CarouselSlider(
          items: widget.image,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              //aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.image.map((url) {
            int index = widget.image.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
