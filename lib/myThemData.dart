import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primarycolor = Color(0xffB7935F);
  static Color blackcolor = Color(0xff242424);

  static ThemeData lightThem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall:GoogleFonts.elMessiri(fontSize: 20,
            fontWeight: FontWeight.w400,
            color: blackcolor
        ),
        bodyMedium:GoogleFonts.elMessiri(fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Color(0xffffffff)
        ),
        bodyLarge: GoogleFonts.elMessiri(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: blackcolor
        ),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
      backgroundColor: primarycolor,
        selectedItemColor: blackcolor,
        unselectedItemColor: Colors.white,

  )
  );
  static ThemeData darkTheme = ThemeData();


}