// hades/HadesTab.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_application/MyThemeData.dart';
import 'package:islamic_application/hades/HadesDetails.dart';

// import 'package:islamic_application/quaran/HadesTabArgs.dart';
import 'package:islamic_application/quaran/soraDetails.dart';
import 'package:islamic_application/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadesTab extends StatefulWidget {
  @override
  State<HadesTab> createState() => _HadesTabState();
}

class _HadesTabState extends State<HadesTab> {
  List<HadesData> ahadesList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadesList.isEmpty) {
      loadFile();
    }
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Expanded(child: Image.asset("assets/images/hades_image.png")),
          const Divider(
            thickness: 2,
            color: AppColor.primaryLightColor,
          ),
          Text(
            AppLocalizations.of(context)!.hades_title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const Divider(
            thickness: 2,
            color: AppColor.primaryLightColor,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Text(
                          ahadesList[index].title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            HadesDeatils.routeName,
                            arguments: HadesData(
                                title: ahadesList[index].title,
                                body: ahadesList[index].body),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
              itemCount: ahadesList.length,
            ),
          )
        ],
      ),
    );
  }

  void loadFile() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hades = content.split("#\r\n");
    for (int i = 0; i < hades.length; i++) {
      List<String> lines = hades[i].split("\n");
      String title = lines[0];
      lines.removeAt(0);
      HadesData hadesobj = HadesData(title: title, body: lines);
      ahadesList.add(hadesobj);
    }
    setState(() {});
  }
}

class HadesData {
  String title;
  List<String> body;

  HadesData({required this.title, required this.body});
}
