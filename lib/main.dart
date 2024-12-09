import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapk/pages/home_page.dart';
import 'package:myapk/pages/items.dart';
import 'package:myapk/pages/login_page.dart';
import 'package:myapk/utilis/es.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: MyRoutes.HomeRoute,
      routes: {
       '/': (context) => FoodMenuScreen(),
        MyRoutes.HomeRoute: (context) => WeddingScreen(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
        MyRoutes.LoginRoute: (context) => FoodMenuScreen(),
        
      },
    );
  }
}
