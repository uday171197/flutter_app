import 'package:flutter/material.dart';
import 'page/homepage.dart';
import 'page/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primaryColor: Colors.green),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        "/": (context) => homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
