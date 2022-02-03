import 'package:app/page_route.dart';
import 'package:flutter/material.dart';
import 'package:app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        hintColor: Colors.amberAccent,
      ),
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: MyRoute.loginRoute,
      routes: <String, WidgetBuilder>{
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
