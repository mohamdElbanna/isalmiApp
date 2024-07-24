// HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_application/hades/HadesTab.dart';
import 'package:islamic_application/quaran/QuaranTab.dart';
import 'package:islamic_application/radio/RadioTab.dart';
import 'package:islamic_application/sebha/SebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_application/settings/SettingsTab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "homePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/quran.png")),
                      label: AppLocalizations.of(context)!.quaran_nav),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/hades.png")),
                      label: AppLocalizations.of(context)!.hades_nav),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                      label: AppLocalizations.of(context)!.sebha_nav),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/radio.png")),
                      label: AppLocalizations.of(context)!.radio_nav),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings_nav),
                ]),
            body: tabs[selectedIndex],
          )
        ],
      ),
    );
  }

  List<Widget> tabs = [
    QuaranTab(),
    HadesTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}
