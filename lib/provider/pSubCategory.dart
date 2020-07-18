import 'package:flowershop/models/mSubCategory.dart';
import 'package:flutter/material.dart';

class PSubCategory with ChangeNotifier {
  List<MSubCategory> _items = [
    MSubCategory(
        id: 1,
        catId: 2,
        subMenuName: 'White Orchid',
        imageUrl: 'assets/images/Flower/1.jpg'),
    MSubCategory(
        id: 2,
        catId: 2,
        subMenuName: 'Bouquet of Red Roses',
        imageUrl: 'assets/images/Flower/2.jpg'),
    MSubCategory(
        id: 3,
        catId: 2,
        subMenuName: 'Natural Lilies',
        imageUrl: 'assets/images/Flower/3.jpg'),
    MSubCategory(
        id: 4,
        catId: 2,
        subMenuName: 'Daisies',
        imageUrl: 'assets/images/Flower/4.jpg'),
    MSubCategory(
        id: 5,
        catId: 3,
        subMenuName: 'Orchids in Aquarium Vase',
        imageUrl: 'assets/images/Valentine/1.jpg'),
    MSubCategory(
        id: 6,
        catId: 3,
        subMenuName: 'Anthurium Plant',
        imageUrl: 'assets/images/Valentine/2.jpg'),
    MSubCategory(
        id: 7,
        catId: 3,
        subMenuName: 'Potted Flowers',
        imageUrl: 'assets/images/Valentine/3.jpg'),
    MSubCategory(
        id: 8,
        catId: 3,
        subMenuName: 'Garbera Flowers',
        imageUrl: 'assets/images/Valentine/4.jpg'),
    MSubCategory(
        id: 9,
        catId: 4,
        subMenuName: 'Zelkova Bonsai Plant',
        imageUrl: 'assets/images/Mother/1.jpg'),
    MSubCategory(
        id: 10,
        catId: 4,
        subMenuName: 'Amaranthus',
        imageUrl: 'assets/images/Mother/2.jpg'),
    MSubCategory(
        id: 11,
        catId: 4,
        subMenuName: 'Amaryllis',
        imageUrl: 'assets/images/Mother/3.jpg'),
    MSubCategory(
        id: 12,
        catId: 4,
        subMenuName: 'Anemone',
        imageUrl: 'assets/images/Mother/4.jpg'),
  ];

  List<MSubCategory> get items {
    return [..._items];
  }

  List<MSubCategory> itemByFilter(int id) {
    return _items.where((element) => element.catId == id).toList();
  }
}
