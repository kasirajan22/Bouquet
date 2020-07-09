import 'package:flowershop/widgets/appBarSearch.dart';
import 'package:flowershop/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = "/category-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        elevation: 0,
        bottom: appBarSearch(context),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                ListTile(
                  leading: Icon(
                    Icons.grid_on,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_florist,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Flowers",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.child_care,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Valentine Gift",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.pregnant_woman,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Mothers Day",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Fathers Day",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(
                    Icons.beach_access,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Accessories",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.cached,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Birthday Gift",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ).toList(),
          ),
        ),
      ),
    );
  }
}
