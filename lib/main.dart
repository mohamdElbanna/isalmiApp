// main.dart
import 'package:flutter/material.dart';
import 'package:islamic_application/HomePage.dart';
import 'package:islamic_application/MyThemeData.dart';
import 'package:islamic_application/hades/HadesDetails.dart';
import 'package:islamic_application/l10n/providers/app_config_providers.dart';
import 'package:islamic_application/quaran/soraDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        soraDetails.routeName: (context) => soraDetails(),
        HadesDeatils.routeName: (context) => HadesDeatils(),
      },
      theme: MyThemeData.lightMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
    );
  }
}
