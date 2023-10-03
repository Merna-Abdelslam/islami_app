import 'package:flutter/material.dart';
import 'package:flutter1/HadethDetails.dart';
import 'package:flutter1/home.dart';
import 'package:flutter1/sura_details.dart';
import 'package:google_fonts/google_fonts.dart';

import 'myThemData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:homeScreen.routeName ,
      routes: {
        homeScreen.routeName:(Context)=>homeScreen(),
        SuraDetailsScreen.routeName:(Context)=>SuraDetailsScreen(),
        HadethDetails.routeName:(Context)=>HadethDetails(),


      },
      theme:MyThemeData.lightThem,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

