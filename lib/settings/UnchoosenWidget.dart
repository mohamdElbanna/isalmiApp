// settings/UnchoosenWidget.dart
import 'package:flutter/material.dart';
import 'package:islamic_application/style.dart';

class UnchoosenWidget extends StatelessWidget {
  String text;

  UnchoosenWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: AppColor.blackColor),
        ),
      ],
    );
  }
}
