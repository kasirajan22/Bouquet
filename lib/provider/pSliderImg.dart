import 'package:flutter/material.dart';

class PSliderImg extends ChangeNotifier {
  List<Widget> _items1 = [
    Image.asset("assets/images/Intro/1/3.jpg"),
    Image.asset("assets/images/Intro/1/2.jpg"),
    Image.asset("assets/images/Intro/1/1.jpg")
  ];

  List<Widget> _items2 = [
    Image.asset("assets/images/Intro/2/3.jpg"),
    Image.asset("assets/images/Intro/2/2.jpg"),
    Image.asset("assets/images/Intro/2/1.jpg")
  ];

  List<Widget> get items1 {
    return [..._items1];
  }

  List<Widget> get items2 {
    return [..._items2];
  }
}
