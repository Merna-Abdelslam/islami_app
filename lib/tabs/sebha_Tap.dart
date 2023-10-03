import 'package:flutter/material.dart';
import 'package:flutter1/myThemData.dart';

class sebhaTap extends StatefulWidget {

  @override
  State<sebhaTap> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<sebhaTap> {
  int counter = 0;
  String txt = "سبحان الله"; // Initial counter value
  void increaseCounter() {

    if (counter < 33) {
      counter += 1; // Increment the counter by 1
    } else {
      if (txt == "سبحان الله") {
        counter = 0;
        txt = "الحمد لله"; // Reset the counter to zero
      }
      else if (txt == "الحمد لله") {
        counter = 0;
        txt = "الله اكبر";
      }
      else {
        counter = 0;
        txt =" سبحان الله ";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Image.asset("assets/images/sebha_image.png", height: 220,),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text("عدد التسبيحات",style:Theme.of(context).textTheme.bodyLarge),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: MyThemeData.primarycolor,
                  borderRadius: BorderRadius.circular(15),


                ),
                width: 70,height: 70,
                child: Center(child: Text("$counter",style:Theme.of(context).textTheme.bodyMedium?.copyWith(color:MyThemeData.blackcolor))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(onPressed: () {
                increaseCounter();
                setState(() {

                });

              },child:Text(txt,style:Theme.of(context).textTheme.bodySmall,),
                style:ElevatedButton.styleFrom( backgroundColor: MyThemeData.primarycolor
                    ,elevation: 10,fixedSize: Size(200, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),

              ),
            )

          ],

        )

    );
  }
}