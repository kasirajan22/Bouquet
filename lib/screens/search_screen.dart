import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/widgets/TopSearch.dart';
import 'package:flowershop/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        elevation: 0,
        bottom: appbarSearch(context),
      ),
      body: Consumer<PSearch>(
        builder: (context, sList, _) => Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: sList.items.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    dense: true,
                    leading: Image.asset(sList.items[i].imageURL),
                    title: Text(sList.items[i].description),
                    subtitle: Text(sList.items[i].amount.toString()),
                  ),
                );
              }),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 1,
      ),
    );
  }

  PreferredSize appbarSearch(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(45.0),
      child: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.white),
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          height: 45.0,
          alignment: Alignment.center,
          child: TopSearch("search"),
        ),
      ),
    );
  }
}
