// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:abc_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change_button = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        textStyle: const TextStyle(color: Colors.black),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "images/login.png",
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  " Welcome $name ",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: const TextStyle(color: Colors.blue),
                        decoration: const InputDecoration(
                          hintText: 'Enter your username',
                          labelText: 'Username',
                          fillColor: Colors.blue,
                          focusColor: Colors.blue,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter username';
                          }

                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.blue),
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          labelText: 'Password',
                          fillColor: Colors.blue,
                          focusColor: Colors.blue,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Password';
                          } else {
                            if (value.length < 6) {
                              return 'Password Shoud be graeter then 6';
                            }
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: change_button
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () async {
                            // ignore: avoid_print
                            print('hiiii');
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                change_button = true;
                              });
                              // ignore: avoid_print
                              await Future.delayed(Duration(seconds: 1));
                              Navigator.pushNamed(context, Myroutes.homepage);
                              setState(() {
                                change_button = false;
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height: 50,
                            width: change_button ? 50 : 150,
                            alignment: Alignment.center,
                            child: change_button
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
