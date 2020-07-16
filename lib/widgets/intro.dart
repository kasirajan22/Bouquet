import 'package:flowershop/provider/pHome.dart';
import 'package:flowershop/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Intro extends StatefulWidget {
  static const routeName = '/intro';
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int currentScreen = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen == 1
          ? Column(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        WSlider(isFirst: true),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Testew bwerg wgt wrhrterrthreht erh hgiewrfrg erughweirughiewr iergrhwe eorgrpoewrg oergr',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {
                            setState(() {
                              currentScreen = 2;
                            });
                          },
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        WSlider(
                          isFirst: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Testew bwerg wgt wrhrterrthreht erh hgiewrfrg erughweirughiewr iergrhwe eorgrpoewrg oergr',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {
                            Provider.of<PHome>(context, listen: false)
                                .setPrefBool(true);
                          },
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          child: Text(
                            'Getting Started',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
