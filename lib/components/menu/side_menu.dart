import 'package:flutter/material.dart';

import '../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AreaInfoText(title: "Residence", text: "Bangladesh"),
                    AreaInfoText(title: "City", text: "Dhaka"),
                    AreaInfoText(title: "Age", text: "22"),
                    Skills(),
                    Coding(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
