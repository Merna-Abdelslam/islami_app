import 'package:flutter/material.dart';
import 'package:flutter1/hadethModel.dart';

import 'myThemData.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName="HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
      Image.asset(
      "assets/images/background.png",
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Scaffold(
    appBar: AppBar(
    iconTheme: IconThemeData(
    color: MyThemeData.primarycolor,
    size: 30,
    ),
    title: Text(
    args.title,
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    ),
      body: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: MyThemeData.primarycolor)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    args.content[index],
                    style: Theme.of(context).textTheme.bodySmall,
                  ));
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    )
      ]
    );


  }
}
