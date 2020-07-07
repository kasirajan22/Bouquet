import 'package:flutter/material.dart';

import '../models/mSearch.dart';

class PSearch extends ChangeNotifier {
  List<MSearch> _items = [
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
  String _searchString = "";
  List<MSearch> get items {
    if (_searchString.isEmpty) {
      return [..._items];
    } else {
      return [
        ..._items
            .where((element) => element.description.contains(_searchString))
            .toList()
      ];
    }
  }

  void filter(String text) {
    _searchString = text;
    notifyListeners();
  }
}
