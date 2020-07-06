import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopSearch extends StatelessWidget {
  final String page;
  const TopSearch(this.page);

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<PSearch>(context);
    var searchText = TextEditingController();
    return Row(
      children: <Widget>[
        Expanded(
          flex: 10,
          child: TextField(
            onTap: () {
              page == "home"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ))
                  : '';
            },
            controller: searchText,
            
            onEditingComplete: () {
              searchProvider.filter(searchText.text);
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
              ),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Icon(
            page == 'home' ? Icons.dashboard : Icons.filter_list,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
