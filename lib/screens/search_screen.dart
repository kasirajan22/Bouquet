import 'package:flowershop/models/mSearch.dart';
import 'package:flowershop/widgets/TopSearch.dart';
import 'package:flutter/material.dart';
import '../models/mSearch.dart';

const List<MSearch> sList = const [
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

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  onSerch(String text) {
    print(text);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(45.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              height: 45.0,
              alignment: Alignment.center,
              child: TopSearch("search", onSerch),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: sList.length,
          itemBuilder: (context, i) => Card(
            elevation: 5,
            child: ListTile(
              dense: true,
              leading: Image.asset(sList[i].imageURL),
              title: Text(sList[i].description),
              subtitle: Text(sList[i].amount.toString()),
            ),
          ),
        ),
      ),
    );
  }
}
