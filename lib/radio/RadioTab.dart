// radio/RadioTab.dart

import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 5, child: Image.asset("assets/images/radio_image.png")),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageIcon(AssetImage("assets/images/previous_icon.png")),
              ImageIcon(AssetImage("assets/images/play_icon.png")),
              ImageIcon(AssetImage("assets/images/next_icon.png")),
            ],
          ),
        )
      ],
    );
  }
}
