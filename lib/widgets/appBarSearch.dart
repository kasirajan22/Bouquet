import 'package:flutter/material.dart';

import 'TopSearch.dart';

PreferredSize appBarSearch(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(45.0),
    child: Theme(
      data: Theme.of(context).copyWith(accentColor: Colors.white),
      child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          height: 45.0,
          alignment: Alignment.center,
          child: TopSearch("home")),
    ),
  );
}
