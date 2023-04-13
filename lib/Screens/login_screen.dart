import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp/Services/auth_services.dart';
import 'package:flutterapp/Services/globals.dart';
import 'package:flutterapp/rounded_button.dart';
import 'package:http/http.dart' as http;

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';
  bool _rememberMe = false;
  bool _showPassword = false;

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomeScreen(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'Enter All Required Fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Center(
              child: Text("Please rotate your device to landscape mode"),
            );
          } else {
            return Row(children: [
              Expanded(
                child: Container(
                  color: Color(0xFF065FB3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/pateroslogo.png",
                        height: 200,
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.blueGrey[800]),
                              prefixIcon: Icon(Icons.person,
                                  color: Colors.blueGrey[800]),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (value) {
                              _email = value;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.blueGrey[800]),
                              prefixIcon:
                                  Icon(Icons.lock, color: Colors.blueGrey[800]),
                              suffixIcon: IconButton(
                                icon: Icon(_showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (value) {
                              _password = value;
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(color: Colors.blueGrey[800]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: 150,
                              child: RoundedButton(
                                btnText: 'LOGIN',
                                onBtnPressed: () => loginPressed(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]);
          }
        }),
      ),
    );
  }
}
