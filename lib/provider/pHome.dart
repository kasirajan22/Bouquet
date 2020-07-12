import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PHome extends ChangeNotifier {
  String toShow = 'intro';

  String get routeStatus {
    return toShow;
  }

  Future showIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('intro') == false) {
      toShow = 'intro';
    } else if (prefs.getBool('islogin') != true) {
      toShow = 'login';
    } else {
      toShow = '';
    }
  }

  void setPrefBool(bool val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("intro", val);
    await showIntro();
    notifyListeners();
  }
}
