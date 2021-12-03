import 'package:abc_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        textStyle: TextStyle(color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/login.png",
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome',
                style: TextStyle(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.homepage);
                        },
                        style: TextButton.styleFrom(
                            minimumSize: const Size(120, 40)),
                        child: const Text(
                          'Login',
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
