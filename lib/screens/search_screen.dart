import 'package:flowershop/models/mSearch.dart';
import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/widgets/TopSearch.dart';
import 'package:flutter/material.dart';
import '../models/mSearch.dart';
import 'package:provider/provider.dart';

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
    //var sList = Provider.of<PSearch>(context, listen: true).items;
    print('weer');
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
              child: TopSearch("search"),
            ),
          ),
        ),
      ),
      body: Consumer<PSearch>(
        builder: (context, sList, _) => Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: sList.items.length,
            itemBuilder: (context, i) => Card(
              elevation: 5,
              child: ListTile(
                dense: true,
                leading: Image.asset(sList.items[i].imageURL),
                title: Text(sList.items[i].description),
                subtitle: Text(sList.items[i].amount.toString()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
