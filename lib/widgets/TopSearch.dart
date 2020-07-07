import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/screens/search_screen.dart';
import 'package:flowershop/widgets/wFilter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopSearch extends StatelessWidget {
  final String page;
  const TopSearch(this.page);

  @override
  Widget build(BuildContext context) {
    //final searchProvider = Provider.of<PSearch>(context);
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
            onChanged: (value) {
              Provider.of<PSearch>(context, listen: false).filter(value);
            },
            // onEditingComplete: () {
            //   searchProvider.filter(searchText.text);
            // },
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
          child: page == 'home'
              ? Icon(
                  Icons.dashboard,
                  color: Colors.white,
                  size: 30,
                )
              : IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => FilterWidget(),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
