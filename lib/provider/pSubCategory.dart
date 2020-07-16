import 'package:flowershop/models/mSubCategory.dart';
import 'package:flutter/material.dart';

class PCategory with ChangeNotifier {
  List<MSubCategory> _items = [
    MSubCategory(
      id:1,
      subMenuName: 'Flowers',
      icon: Icons.local_florist,
    ),
     MSubCategory(
       id:2,
      subMenuName: 'Flower',
      icon: Icons.local_florist,
    ),
    MSubCategory(
      id:3,
      subMenuName: 'Valentine Gift',
      icon: Icons.child_care,
    ),
    MSubCategory(
      id:4,
      subMenuName: 'Mothers Day',
      icon: Icons.pregnant_woman,
    ),
    MSubCategory(
      id:5,
      subMenuName: 'Fathers Day',
      icon: Icons.account_circle,
    ),
    MSubCategory(
      id:6,
      subMenuName: 'Accessories',
      icon: Icons.beach_access,
    ),
    MSubCategory(
      id:7,
      subMenuName: 'Birthday Gift',
      icon: Icons.cached,
    ),
  ];

  List<MSubCategory> get items {
    return [..._items];
  }
}
