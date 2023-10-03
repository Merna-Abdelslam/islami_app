import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1/HadethDetails.dart';
import 'package:flutter1/hadethModel.dart';

import '../myThemData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadethTap extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 3,
          color: MyThemeData.primarycolor,
        ),
        Text(AppLocalizations.of(context)!.ahadeth, style: Theme.of(context).textTheme.bodyLarge),
        Divider(
          thickness: 3,
          color: MyThemeData.primarycolor,
        ),
        Expanded(
          child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
    thickness: 2,
    color: MyThemeData.primarycolor,
    endIndent: 40,
    indent: 40,
    ),
            itemBuilder: (context, index) {
              return Center(
                  child: InkWell(onTap: () {
                    Navigator.pushNamed(context,HadethDetails.routeName,
                      arguments: allAhadeth[index]

                    );

                  },
                    child: Text(
                allAhadeth[index].title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
                  ));
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  void loadHadeth() async {
    String ahadeth = await rootBundle.loadString("assets/filles/ahadeth.txt");
    List<String> ahadethList = ahadeth.split("#");
    for (int i = 0; i < ahadethList.length; i++) {
      String Hadethone = ahadethList[i];
      List<String> HadethoneLines = Hadethone.trim().split("\n");
      String title = HadethoneLines[0];
      HadethoneLines.removeAt(0);
      List<String> content = HadethoneLines;
      HadethModel hadethModel = HadethModel(title, content);

      allAhadeth.add(hadethModel);
    }
  }
}
