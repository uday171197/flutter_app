import 'package:flutter/material.dart';
import 'page/homepage.dart';
import 'page/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';
import 'page/buyer_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.green),
      darkTheme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      initialRoute: Myroutes.login,
      routes: {
        Myroutes.homepage: (context) => homepage(),
        Myroutes.login: (context) => const LoginPage(),
        Myroutes.buyerRoute: (context) => BuyerAuction(),
      },
    );
  }
}
