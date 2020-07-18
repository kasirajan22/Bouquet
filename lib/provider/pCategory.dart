import 'package:flowershop/models/mCategory.dart';
import 'package:flutter/material.dart';

class PCategory with ChangeNotifier {
  List<MCategory> _items = [
    // MCategory(
    //   id: 1,
    //   menuName: 'Flowers',
    //   description: 'Test description with different text',
    //   icon: Icons.local_florist,
    //   imageURL: 'assets/images/1.jpg',
    // ),
    MCategory(
      id: 2,
      menuName: 'Flower',
      description: 'Test description with different text',
      icon: Icons.local_florist,
      imageURL: 'assets/images/2.jpg',
    ),
    MCategory(
      id: 5,
      menuName: 'Fathers Day',
      description: 'Test description with different text',
      icon: Icons.account_circle,
      imageURL: 'assets/images/5.jpg',
    ),
    MCategory(
      id: 4,
      menuName: 'Mothers Day',
      description: 'Test description with different text',
      icon: Icons.pregnant_woman,
      imageURL: 'assets/images/4.jpg',
    ),
    MCategory(
      id: 3,
      menuName: 'Valentine Gift',
      description: 'Test description with different text',
      icon: Icons.child_care,
      imageURL: 'assets/images/3.jpg',
    ),

    MCategory(
      id: 6,
      menuName: 'Accessories',
      description: 'Test description with different text',
      icon: Icons.beach_access,
      imageURL: 'assets/images/6.jpg',
    ),
    MCategory(
      id: 7,
      menuName: 'Birthday Gift',
      description: 'Test description with different text',
      icon: Icons.cached,
      imageURL: 'assets/images/8.jpg',
    ),
  ];

  List<MCategory> get items {
    return [..._items];
  }
}
