// settings/ChoosenWidget.dart
import 'package:flutter/material.dart';
import 'package:islamic_application/style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChoosenWidget extends StatelessWidget {
  String text;

  ChoosenWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(color: AppColor.primaryLightColor),
        ),
        Icon(
          Icons.check_outlined,
          size: 30,
          color: AppColor.primaryLightColor,
        )
      ],
    );
  }
}
