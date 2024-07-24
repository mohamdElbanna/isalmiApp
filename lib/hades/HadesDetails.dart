// hades/HadesDetails.dart
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_application/hades/HadesTab.dart';
import 'package:islamic_application/quaran/QuaranTabArgs.dart';
import 'package:islamic_application/style.dart';

class HadesDeatils extends StatelessWidget {
  static const String routeName = "hadesDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadesData;
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
                  Text(args.title),
                  const Divider(
                    thickness: 2,
                    color: AppColor.primaryLightColor,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          args.body[index],
                          textDirection: TextDirection.rtl,
                        );
                      },
                      itemCount: args.body.length,
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
}
