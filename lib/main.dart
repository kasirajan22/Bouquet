import 'package:flowershop/provider/pHome.dart';
import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/provider/pSliderImg.dart';
import 'package:flowershop/screens/Login_screen.dart';
import 'package:flowershop/screens/category_screen.dart';
import 'package:flowershop/screens/home_screen.dart';
import 'package:flowershop/screens/search_screen.dart';
import 'package:flowershop/widgets/intro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => PSearch(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => PHome(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => PSliderImg(),
        ),
      ],
      child: Consumer<PHome>(
        builder: (context, pHome, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: MaterialColor(
              4294316089,
              {
                50: Color(0xfffee6eb),
                100: Color(0xfffdced6),
                200: Color(0xfffb9dae),
                300: Color(0xfff96c85),
                400: Color(0xfff83a5c),
                500: Color(0xfff60933),
                600: Color(0xffc50729),
                700: Color(0xff93061f),
                800: Color(0xff620415),
                900: Color(0xff31020a)
              },
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/',
          routes: {
            '/': (ctx) => //pHome.routeStatus == "intro" ? TestScreen() : New(),
                pHome.routeStatus == 'intro'
                    ? Intro()
                    : pHome.routeStatus == 'login'
                        ? LoginScreen()
                        : HomeScreen(),
            //LoginScreen.routeName: (ctx) => TestScreen(),
            HomeScreen.routeName: (ctx) => HomeScreen(),
            SearchScreen.routeName: (ctx) => SearchScreen(),
            CategoryScreen.routeName: (ctx) => CategoryScreen(),
          },
          //home: HomeScreen(), //MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> routesMethod(BuildContext context) {
    return {};
  }
}
