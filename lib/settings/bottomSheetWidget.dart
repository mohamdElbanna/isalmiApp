// settings/bottomSheetWidget.dart
import 'package:flutter/material.dart';
import 'package:islamic_application/settings/ChoosenWidget.dart';
import 'package:islamic_application/settings/UnchoosenWidget.dart';
import 'package:islamic_application/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  String choosen = "", unchoosen = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            InkWell(
              onTap: () => choosenLanguage("en"),
              child: ChoosenWidget(
                text: choosen,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => choosenLanguage("ar"),
              child: UnchoosenWidget(
                text: unchoosen,
              ),
            )
          ],
        ),
      ),
    );
  }

  choosenLanguage(String language) {
    if (language == "en") {
      choosen = AppLocalizations.of(context)!.english;
      unchoosen = AppLocalizations.of(context)!.arabic;
      setState(() {});
    } else if (language == "ar") {
      choosen = AppLocalizations.of(context)!.arabic;
      unchoosen = AppLocalizations.of(context)!.english;
      setState(() {});
    }
  }
}
