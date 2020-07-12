import 'package:flutter/material.dart';

class PSliderImg extends ChangeNotifier {
  List<Widget> _items = [
    Image.asset("assets/images/Shop3.jpg"),
    Image.asset("assets/images/Shop2.jpg"),
    Image.asset("assets/images/Shop1.jpg")
  ];

  List<Widget> get items {
    return [..._items];
  }
}
