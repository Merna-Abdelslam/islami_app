import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1/myThemData.dart';
import 'package:flutter1/suraModel.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
              args.name,
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
                    verses[index],
                    style: Theme.of(context).textTheme.bodySmall,
                  ));
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ],
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/filles/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
