import 'package:flowershop/screens/search_screen.dart';
import 'package:flutter/material.dart';

class TopSearch extends StatelessWidget {
  final String page;
  final Function onSearch;
  const TopSearch(this.page, this.onSearch);

  @override
  Widget build(BuildContext context) {
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
            onEditingComplete: onSearch,
            controller: searchText,
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
