// quaran/soraDetails.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_application/quaran/QuaranTabArgs.dart';
import 'package:islamic_application/style.dart';

class soraDetails extends StatefulWidget {
  static const String routeName = "quaranDetailsScreen";

  @override
  State<soraDetails> createState() => _soraDetailsState();
}

// ignore: camel_case_types
class _soraDetailsState extends State<soraDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuaranTabArgs;
    if (verse.isEmpty) {
      loadFile(args.index);
    }

    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/background_light.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                "Islami",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              centerTitle: true,
            ),
            body: Container(
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(168, 248, 248, 248),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("سورة ${args.soraName}"),
                      const SizedBox(
                        width: 30,
                      ),
                      // play voice icon
                      ImageIcon(AssetImage("assets/images/IconPlayCircle.png")),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    color: AppColor.primaryLightColor,
                  ),
                  Expanded(
                    child: verse.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: AppColor.primaryLightColor,
                            ),
                          )
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              return Text(
                                "${verse[index]}(${index + 1})",
                                textDirection: TextDirection.rtl,
                              );
                            },
                            itemCount: verse.length,
                          ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verse = lines;
    setState(() {});
  }
}
