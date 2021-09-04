import 'package:flutter/material.dart';
import 'package:profile/components/menu/side_menu.dart';
import 'package:profile/constants.dart';
import 'widgets/high_lights_info.dart';
import 'widgets/home_banner.dart';
import 'widgets/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeBanner(),
                HighLightsInfo(),
                Projects(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
