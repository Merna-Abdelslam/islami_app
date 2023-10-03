import 'package:flutter/material.dart';
import 'package:flutter1/myThemData.dart';

class settingTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: Theme.of(context).textTheme.bodyLarge),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border:
                        Border.all(color: MyThemeData.primarycolor, width: 4)),
                child: Text("English ",
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Theme", style: Theme.of(context).textTheme.bodyLarge),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(onTap: () {
              showTheme(context);
            },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border:
                        Border.all(color: MyThemeData.primarycolor, width: 4)),
                child:
                    Text("Light ", style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          )
        ],
      ),
    );
  }

  showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
      builder: (context) => Container(),
    );
  }
  showTheme(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
      builder: (context) => Container(),
    );
  }
}
//  take the context  in parameter or make the screen statful
