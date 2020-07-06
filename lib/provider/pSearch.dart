import 'package:flutter/material.dart';

import '../models/mSearch.dart';

class PSearch extends ChangeNotifier {
  var _items = [];
  List<MSearch> _sItems = [
    MSearch(
      imageURL: 'assets/images/1.jpg',
      description: 'aaa Test Search image with filter condition',
      amount: 50.00,
    ),
    MSearch(
      imageURL: 'assets/images/2.jpg',
      description: 'bbb Test Search image with filter condition',
      amount: 50.00,
    ),
    MSearch(
      imageURL: 'assets/images/3.jpg',
      description: 'ccc Test Search image with filter condition',
      amount: 50.00,
    ),
    MSearch(
      imageURL: 'assets/images/4.jpg',
      description: 'ddd Test Search image with filter condition',
      amount: 50.00,
    )
  ];

  List<MSearch> get items {
    _items = _sItems;
    return [..._items];
  }

  List<MSearch> filter(String text) {
    _sItems =
        _sItems.where((element) => element.description.contains(text)).toList();
    notifyListeners();
  }
}
