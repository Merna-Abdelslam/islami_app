import 'package:flutter/material.dart';
import 'package:flutter1/myThemData.dart';
import 'package:flutter1/tabs/ahadeth_tab.dart';
import 'package:flutter1/tabs/quran_tab.dart';
import 'package:flutter1/tabs/radio_tab.dart';
import 'package:flutter1/tabs/sebha_Tap.dart';
import 'package:flutter1/tabs/setting_tap.dart';

import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ Image.asset("assets/images/background.png", width:
      double.infinity, fit: BoxFit.cover,),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami", style: Theme
                .of(context)
                .textTheme
                .bodyLarge),


          ),
          bottomNavigationBar: BottomNavigationBar(currentIndex: index,
            onTap: (value) {
              index=value;

              setState(() {

              });

            },
            items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")), label: "Quran", backgroundColor:MyThemeData.primarycolor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")), label: "Ahadeth",backgroundColor: MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")), label: "Sebha", backgroundColor:MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")), label: "radio", backgroundColor:MyThemeData.primarycolor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings", backgroundColor:MyThemeData.primarycolor),
          ],),
          body:tabs[index] ,
        ),

      ],
    );
  }
  List<Widget>tabs=[
    QuranTap(),
    AhadethTap(),
    sebhaTap(),
    radioTap(),
settingTap(),
  ];

}
