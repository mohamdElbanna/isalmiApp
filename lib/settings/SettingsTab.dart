// settings/SettingsTab.dart
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_application/settings/bottomSheetWidget.dart';

import '../style.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language),
          SizedBox(
            height: 10,
          ),
          // language container
          InkWell(
            onTap: () {
              showBottomSheetMenu();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primaryLightColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("English"),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          /// theme change
          Text(AppLocalizations.of(context)!.theme),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryLightColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light"),
                Icon(
                  Icons.arrow_drop_down,
                  size: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showBottomSheetMenu() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheetWidget(),
    );
  }
}
