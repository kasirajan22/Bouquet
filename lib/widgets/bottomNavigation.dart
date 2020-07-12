import 'package:flowershop/screens/category_screen.dart';
import 'package:flowershop/screens/home_screen.dart';
import 'package:flowershop/screens/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;

  const BottomNavigation({@required this.currentIndex});
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_giftcard,
          ),
          title: Text('gift'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          title: Text('chat'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
          ),
          title: Text('account'),
        ),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.black,
      onTap: (i) {
        if (widget.currentIndex != i) {
          if (i == 0) {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          } else if (i == 1) {
            Navigator.of(context).pushNamed(SearchScreen.routeName);
          } else if (i == 2) {
            Navigator.of(context)
                .pushReplacementNamed(CategoryScreen.routeName);
          }
        }
      },
    );
  }
}
