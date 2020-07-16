import 'package:flutter/material.dart';

class MCategory {
  final int id;
  final String menuName;
  final IconData icon;
  final String description;
  final String imageURL;
  MCategory(
      {this.id, this.menuName, this.icon, this.description, this.imageURL});
}
