import 'package:flutter/material.dart';

enum AuthMode { Signup, Login }

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool isSignInOptions = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: isSignInOptions ? 1 : 2,
                fit: FlexFit.tight,
                child: Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      if (isSignInOptions == false)
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sign in with',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      if (isSignInOptions)
                        Container(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Email'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'Password'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Forget password?',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: true,
                                      onChanged: (val) {},
                                    ),
                                    Text('Remember password')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: const EdgeInsets.all(15),
                          onPressed: () {
                            setState(() {
                              isSignInOptions = !isSignInOptions;
                            });
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'OR',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: RaisedButton(
                              padding: const EdgeInsets.all(15),
                              onPressed: () {},
                              color: Color.fromRGBO(71, 90, 149, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'Facebook',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: RaisedButton(
                              padding: const EdgeInsets.all(15),
                              onPressed: () {},
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'Twitter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Do you want to ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'signup?',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
